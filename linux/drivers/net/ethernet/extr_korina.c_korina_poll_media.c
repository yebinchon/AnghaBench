
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct korina_private {int media_check_timer; struct net_device* dev; } ;


 scalar_t__ HZ ;
 struct korina_private* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int korina_check_media (struct net_device*,int ) ;
 struct korina_private* lp ;
 int media_check_timer ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void korina_poll_media(struct timer_list *t)
{
 struct korina_private *lp = from_timer(lp, t, media_check_timer);
 struct net_device *dev = lp->dev;

 korina_check_media(dev, 0);
 mod_timer(&lp->media_check_timer, jiffies + HZ);
}
