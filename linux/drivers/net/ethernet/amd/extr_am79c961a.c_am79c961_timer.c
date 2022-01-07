
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct net_device {int name; int base_addr; } ;
struct dev_priv {int timer; int chip_lock; struct net_device* dev; } ;


 int ISALED0 ;
 unsigned int ISALED0_LNKST ;
 struct dev_priv* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int netif_carrier_off (struct net_device*) ;
 unsigned int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int printk (char*,int ) ;
 struct dev_priv* priv ;
 unsigned int read_ireg (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void am79c961_timer(struct timer_list *t)
{
 struct dev_priv *priv = from_timer(priv, t, timer);
 struct net_device *dev = priv->dev;
 unsigned int lnkstat, carrier;
 unsigned long flags;

 spin_lock_irqsave(&priv->chip_lock, flags);
 lnkstat = read_ireg(dev->base_addr, ISALED0) & ISALED0_LNKST;
 spin_unlock_irqrestore(&priv->chip_lock, flags);
 carrier = netif_carrier_ok(dev);

 if (lnkstat && !carrier) {
  netif_carrier_on(dev);
  printk("%s: link up\n", dev->name);
 } else if (!lnkstat && carrier) {
  netif_carrier_off(dev);
  printk("%s: link down\n", dev->name);
 }

 mod_timer(&priv->timer, jiffies + msecs_to_jiffies(500));
}
