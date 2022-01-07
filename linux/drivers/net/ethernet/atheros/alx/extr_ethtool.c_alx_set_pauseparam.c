
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ rx_pause; scalar_t__ tx_pause; } ;
struct alx_hw {int adv_cfg; int flowctrl; } ;
struct alx_priv {struct alx_hw hw; } ;


 int ADVERTISED_Autoneg ;
 int ALX_FC_ANEG ;
 int ALX_FC_RX ;
 int ALX_FC_TX ;
 int ASSERT_RTNL () ;
 int alx_cfg_mac_flowcontrol (struct alx_hw*,int) ;
 int alx_setup_speed_duplex (struct alx_hw*,int,int) ;
 struct alx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int alx_set_pauseparam(struct net_device *netdev,
         struct ethtool_pauseparam *pause)
{
 struct alx_priv *alx = netdev_priv(netdev);
 struct alx_hw *hw = &alx->hw;
 int err = 0;
 bool reconfig_phy = 0;
 u8 fc = 0;

 if (pause->tx_pause)
  fc |= ALX_FC_TX;
 if (pause->rx_pause)
  fc |= ALX_FC_RX;
 if (pause->autoneg)
  fc |= ALX_FC_ANEG;

 ASSERT_RTNL();


 if (hw->adv_cfg & ADVERTISED_Autoneg) {
  if (!((fc ^ hw->flowctrl) & ALX_FC_ANEG))
   reconfig_phy = 1;
  if (fc & hw->flowctrl & ALX_FC_ANEG &&
      (fc ^ hw->flowctrl) & (ALX_FC_RX | ALX_FC_TX))
   reconfig_phy = 1;
 }

 if (reconfig_phy) {
  err = alx_setup_speed_duplex(hw, hw->adv_cfg, fc);
  if (err)
   return err;
 }


 if ((fc ^ hw->flowctrl) & (ALX_FC_RX | ALX_FC_TX))
  alx_cfg_mac_flowcontrol(hw, fc);

 hw->flowctrl = fc;

 return 0;
}
