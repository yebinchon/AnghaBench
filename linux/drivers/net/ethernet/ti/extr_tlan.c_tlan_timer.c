
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ expires; int * function; } ;
struct tlan_priv {int timer_type; int lock; TYPE_1__ timer; scalar_t__ timer_set_at; struct net_device* dev; } ;
struct timer_list {int dummy; } ;
struct net_device {int base_addr; } ;


 int TLAN_LED_LINK ;
 int TLAN_LED_REG ;

 scalar_t__ TLAN_TIMER_ACT_DELAY ;






 int add_timer (TYPE_1__*) ;
 struct tlan_priv* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 struct tlan_priv* priv ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;
 int tlan_dio_write8 (int ,int ,int ) ;
 int tlan_finish_reset (struct net_device*) ;
 int tlan_phy_finish_auto_neg (struct net_device*) ;
 int tlan_phy_power_down (struct net_device*) ;
 int tlan_phy_power_up (struct net_device*) ;
 int tlan_phy_reset (struct net_device*) ;
 int tlan_phy_start_link (struct net_device*) ;

__attribute__((used)) static void tlan_timer(struct timer_list *t)
{
 struct tlan_priv *priv = from_timer(priv, t, timer);
 struct net_device *dev = priv->dev;
 u32 elapsed;
 unsigned long flags = 0;

 priv->timer.function = ((void*)0);

 switch (priv->timer_type) {
 case 131:
  tlan_phy_power_down(dev);
  break;
 case 130:
  tlan_phy_power_up(dev);
  break;
 case 129:
  tlan_phy_reset(dev);
  break;
 case 128:
  tlan_phy_start_link(dev);
  break;
 case 132:
  tlan_phy_finish_auto_neg(dev);
  break;
 case 133:
  tlan_finish_reset(dev);
  break;
 case 134:
  spin_lock_irqsave(&priv->lock, flags);
  if (priv->timer.function == ((void*)0)) {
   elapsed = jiffies - priv->timer_set_at;
   if (elapsed >= TLAN_TIMER_ACT_DELAY) {
    tlan_dio_write8(dev->base_addr,
      TLAN_LED_REG, TLAN_LED_LINK);
   } else {
    priv->timer.expires = priv->timer_set_at
     + TLAN_TIMER_ACT_DELAY;
    spin_unlock_irqrestore(&priv->lock, flags);
    add_timer(&priv->timer);
    break;
   }
  }
  spin_unlock_irqrestore(&priv->lock, flags);
  break;
 default:
  break;
 }

}
