
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct de4x5_private {scalar_t__ chipset; int timer; scalar_t__ linkOK; scalar_t__ useSROM; int gendev; } ;


 scalar_t__ DC21040 ;
 scalar_t__ DC21041 ;
 scalar_t__ DC21140 ;
 int DE4X5_AUTOSENSE_MS ;
 int HZ ;
 int dc21040_autoconf (struct net_device*) ;
 int dc21041_autoconf (struct net_device*) ;
 int dc21140m_autoconf (struct net_device*) ;
 struct net_device* dev_get_drvdata (int ) ;
 struct de4x5_private* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 struct de4x5_private* lp ;
 int mod_timer (int *,scalar_t__) ;
 int srom_autoconf (struct net_device*) ;
 int timer ;

__attribute__((used)) static void
de4x5_ast(struct timer_list *t)
{
 struct de4x5_private *lp = from_timer(lp, t, timer);
 struct net_device *dev = dev_get_drvdata(lp->gendev);
 int next_tick = DE4X5_AUTOSENSE_MS;
 int dt;

 if (lp->useSROM)
  next_tick = srom_autoconf(dev);
 else if (lp->chipset == DC21140)
  next_tick = dc21140m_autoconf(dev);
 else if (lp->chipset == DC21041)
  next_tick = dc21041_autoconf(dev);
 else if (lp->chipset == DC21040)
  next_tick = dc21040_autoconf(dev);
 lp->linkOK = 0;

 dt = (next_tick * HZ) / 1000;

 if (!dt)
  dt = 1;

 mod_timer(&lp->timer, jiffies + dt);
}
