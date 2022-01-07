
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_port {int phy_lock; int duplex; int speed; int netdev; } ;
struct sky2_hw {struct net_device** dev; } ;
struct net_device {int dummy; } ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int PHY_MARV_INT_STAT ;
 int PHY_MARV_PHY_STAT ;
 int PHY_M_IS_AN_COMPL ;
 int PHY_M_IS_DUP_CHANGE ;
 int PHY_M_IS_LSP_CHANGE ;
 int PHY_M_IS_LST_CHANGE ;
 int PHY_M_PS_FULL_DUP ;
 int PHY_M_PS_LINK_UP ;
 int gm_phy_read (struct sky2_hw*,unsigned int,int ) ;
 int intr ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_info (struct sky2_port*,int ,int ,char*,int,int) ;
 int netif_running (struct net_device*) ;
 scalar_t__ sky2_autoneg_done (struct sky2_port*,int) ;
 int sky2_link_down (struct sky2_port*) ;
 int sky2_link_up (struct sky2_port*) ;
 int sky2_phy_speed (struct sky2_hw*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sky2_phy_intr(struct sky2_hw *hw, unsigned port)
{
 struct net_device *dev = hw->dev[port];
 struct sky2_port *sky2 = netdev_priv(dev);
 u16 istatus, phystat;

 if (!netif_running(dev))
  return;

 spin_lock(&sky2->phy_lock);
 istatus = gm_phy_read(hw, port, PHY_MARV_INT_STAT);
 phystat = gm_phy_read(hw, port, PHY_MARV_PHY_STAT);

 netif_info(sky2, intr, sky2->netdev, "phy interrupt status 0x%x 0x%x\n",
     istatus, phystat);

 if (istatus & PHY_M_IS_AN_COMPL) {
  if (sky2_autoneg_done(sky2, phystat) == 0 &&
      !netif_carrier_ok(dev))
   sky2_link_up(sky2);
  goto out;
 }

 if (istatus & PHY_M_IS_LSP_CHANGE)
  sky2->speed = sky2_phy_speed(hw, phystat);

 if (istatus & PHY_M_IS_DUP_CHANGE)
  sky2->duplex =
      (phystat & PHY_M_PS_FULL_DUP) ? DUPLEX_FULL : DUPLEX_HALF;

 if (istatus & PHY_M_IS_LST_CHANGE) {
  if (phystat & PHY_M_PS_LINK_UP)
   sky2_link_up(sky2);
  else
   sky2_link_down(sky2);
 }
out:
 spin_unlock(&sky2->phy_lock);
}
