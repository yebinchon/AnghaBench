
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ipw2100_priv {int hw_features; int status; TYPE_2__* ieee; int net_dev; } ;
struct TYPE_3__ {int wiphy; } ;
struct TYPE_4__ {TYPE_1__ wdev; } ;


 int HW_FEATURE_RFKILL ;
 int IPW_BIT_GPIO_RF_KILL ;
 int IPW_REG_GPIO ;
 int MAX_RF_KILL_CHECKS ;
 int RF_KILL_CHECK_DELAY ;
 int STATUS_RF_KILL_HW ;
 int read_register (int ,int ,int*) ;
 int udelay (int ) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static int rf_kill_active(struct ipw2100_priv *priv)
{



 unsigned short value = 0;
 u32 reg = 0;
 int i;

 if (!(priv->hw_features & HW_FEATURE_RFKILL)) {
  wiphy_rfkill_set_hw_state(priv->ieee->wdev.wiphy, 0);
  priv->status &= ~STATUS_RF_KILL_HW;
  return 0;
 }

 for (i = 0; i < 5; i++) {
  udelay(40);
  read_register(priv->net_dev, IPW_REG_GPIO, &reg);
  value = (value << 1) | ((reg & IPW_BIT_GPIO_RF_KILL) ? 0 : 1);
 }

 if (value == 0) {
  wiphy_rfkill_set_hw_state(priv->ieee->wdev.wiphy, 1);
  priv->status |= STATUS_RF_KILL_HW;
 } else {
  wiphy_rfkill_set_hw_state(priv->ieee->wdev.wiphy, 0);
  priv->status &= ~STATUS_RF_KILL_HW;
 }

 return (value == 0);
}
