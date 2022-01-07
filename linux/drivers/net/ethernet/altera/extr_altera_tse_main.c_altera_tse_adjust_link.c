
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {int duplex; int speed; scalar_t__ link; } ;
struct net_device {int name; struct phy_device* phydev; } ;
struct altera_tse_private {int oldduplex; int oldspeed; int oldlink; int mac_cfg_lock; TYPE_1__* mac_dev; int dev; } ;
struct TYPE_2__ {int command_config; } ;


 int MAC_CMDCFG_ENA_10 ;
 int MAC_CMDCFG_ETH_SPEED ;
 int MAC_CMDCFG_HD_ENA ;
 int ioread32 (int *) ;
 int iowrite32 (int ,int *) ;
 int netdev_dbg (int ,char*,int ,int) ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 scalar_t__ netif_msg_link (struct altera_tse_private*) ;
 int phy_print_status (struct phy_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void altera_tse_adjust_link(struct net_device *dev)
{
 struct altera_tse_private *priv = netdev_priv(dev);
 struct phy_device *phydev = dev->phydev;
 int new_state = 0;


 spin_lock(&priv->mac_cfg_lock);
 if (phydev->link) {

  u32 cfg_reg = ioread32(&priv->mac_dev->command_config);


  if (phydev->duplex != priv->oldduplex) {
   new_state = 1;
   if (!(phydev->duplex))
    cfg_reg |= MAC_CMDCFG_HD_ENA;
   else
    cfg_reg &= ~MAC_CMDCFG_HD_ENA;

   netdev_dbg(priv->dev, "%s: Link duplex = 0x%x\n",
       dev->name, phydev->duplex);

   priv->oldduplex = phydev->duplex;
  }


  if (phydev->speed != priv->oldspeed) {
   new_state = 1;
   switch (phydev->speed) {
   case 1000:
    cfg_reg |= MAC_CMDCFG_ETH_SPEED;
    cfg_reg &= ~MAC_CMDCFG_ENA_10;
    break;
   case 100:
    cfg_reg &= ~MAC_CMDCFG_ETH_SPEED;
    cfg_reg &= ~MAC_CMDCFG_ENA_10;
    break;
   case 10:
    cfg_reg &= ~MAC_CMDCFG_ETH_SPEED;
    cfg_reg |= MAC_CMDCFG_ENA_10;
    break;
   default:
    if (netif_msg_link(priv))
     netdev_warn(dev, "Speed (%d) is not 10/100/1000!\n",
          phydev->speed);
    break;
   }
   priv->oldspeed = phydev->speed;
  }
  iowrite32(cfg_reg, &priv->mac_dev->command_config);

  if (!priv->oldlink) {
   new_state = 1;
   priv->oldlink = 1;
  }
 } else if (priv->oldlink) {
  new_state = 1;
  priv->oldlink = 0;
  priv->oldspeed = 0;
  priv->oldduplex = -1;
 }

 if (new_state && netif_msg_link(priv))
  phy_print_status(phydev);

 spin_unlock(&priv->mac_cfg_lock);
}
