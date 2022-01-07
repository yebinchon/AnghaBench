
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {int autoneg; int tx_pause; int rx_pause; } ;
struct alx_hw {int flowctrl; int adv_cfg; } ;
struct alx_priv {struct alx_hw hw; } ;


 int ADVERTISED_Autoneg ;
 int ALX_FC_ANEG ;
 int ALX_FC_RX ;
 int ALX_FC_TX ;
 struct alx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void alx_get_pauseparam(struct net_device *netdev,
          struct ethtool_pauseparam *pause)
{
 struct alx_priv *alx = netdev_priv(netdev);
 struct alx_hw *hw = &alx->hw;

 pause->autoneg = !!(hw->flowctrl & ALX_FC_ANEG &&
       hw->adv_cfg & ADVERTISED_Autoneg);
 pause->tx_pause = !!(hw->flowctrl & ALX_FC_TX);
 pause->rx_pause = !!(hw->flowctrl & ALX_FC_RX);
}
