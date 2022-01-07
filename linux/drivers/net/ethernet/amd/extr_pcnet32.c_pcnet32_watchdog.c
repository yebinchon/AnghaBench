
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pcnet32_private {int watchdog_timer; int lock; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int PCNET32_WATCHDOG_TIMEOUT ;
 struct pcnet32_private* from_timer (int ,struct timer_list*,int ) ;
 struct pcnet32_private* lp ;
 int mod_timer (int *,int ) ;
 int pcnet32_check_media (struct net_device*,int ) ;
 int round_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int watchdog_timer ;

__attribute__((used)) static void pcnet32_watchdog(struct timer_list *t)
{
 struct pcnet32_private *lp = from_timer(lp, t, watchdog_timer);
 struct net_device *dev = lp->dev;
 unsigned long flags;


 spin_lock_irqsave(&lp->lock, flags);
 pcnet32_check_media(dev, 0);
 spin_unlock_irqrestore(&lp->lock, flags);

 mod_timer(&lp->watchdog_timer, round_jiffies(PCNET32_WATCHDOG_TIMEOUT));
}
