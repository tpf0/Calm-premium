
// Developed by Abdullah

#import <UIKit.h>
#import <substrate.h>

// Enable Premuim

%hook CalmAppModule.Subscription
-(bool)isCalmLifetimeProduct {
  return TRUE;
}
}

-(bool)isValid {
  return TRUE;
}
}

-(id)expirationDate {
  return NSDate*(2099-03-29 21:22:32 +0000);
}
%end

%hook User
+(bool)isSubscribed {
  return TRUE;
}
}

-(void)setIsSubscribed:(bool)arg1 {
  arg1 = TRUE;
  %orig(arg1):
}
%end

%hook CalmProduct
-(long long)subscriptionLength {
  return 9999;
}
%end

/* Note when you run this code will result erorr because calm app written in swift language but all these can be modifeid by third party app */
