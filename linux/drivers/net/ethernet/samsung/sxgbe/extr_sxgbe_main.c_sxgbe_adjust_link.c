
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sxgbe_priv_data {int speed; int oldlink; int ioaddr; TYPE_2__* hw; } ;
struct phy_device {int speed; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;
struct TYPE_4__ {TYPE_1__* mac; } ;
struct TYPE_3__ {int (* set_speed ) (int ,int) ;} ;





 int SPEED_UNKNOWN ;
 int SXGBE_SPEED_10G ;
 int SXGBE_SPEED_1G ;
 int SXGBE_SPEED_2_5G ;
 int link ;
 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;
 int netif_err (struct sxgbe_priv_data*,int ,struct net_device*,char*,int) ;
 int netif_msg_link (struct sxgbe_priv_data*) ;
 int phy_print_status (struct phy_device*) ;
 int stub1 (int ,int) ;
 int sxgbe_eee_adjust (struct sxgbe_priv_data*) ;

__attribute__((used)) static void sxgbe_adjust_link(struct net_device *dev)
{
 struct sxgbe_priv_data *priv = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;
 u8 new_state = 0;
 u8 speed = 0xff;

 if (!phydev)
  return;





 if (phydev->link) {
  if (phydev->speed != priv->speed) {
   new_state = 1;
   switch (phydev->speed) {
   case 129:
    speed = SXGBE_SPEED_10G;
    break;
   case 128:
    speed = SXGBE_SPEED_2_5G;
    break;
   case 130:
    speed = SXGBE_SPEED_1G;
    break;
   default:
    netif_err(priv, link, dev,
       "Speed (%d) not supported\n",
       phydev->speed);
   }

   priv->speed = phydev->speed;
   priv->hw->mac->set_speed(priv->ioaddr, speed);
  }

  if (!priv->oldlink) {
   new_state = 1;
   priv->oldlink = 1;
  }
 } else if (priv->oldlink) {
  new_state = 1;
  priv->oldlink = 0;
  priv->speed = SPEED_UNKNOWN;
 }

 if (new_state & netif_msg_link(priv))
  phy_print_status(phydev);


 sxgbe_eee_adjust(priv);
}
