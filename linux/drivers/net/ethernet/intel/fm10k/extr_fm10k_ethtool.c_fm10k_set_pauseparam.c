
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {int rx_pause; struct fm10k_hw hw; } ;
struct ethtool_pauseparam {scalar_t__ rx_pause; int tx_pause; scalar_t__ autoneg; } ;


 int EINVAL ;
 scalar_t__ fm10k_mac_pf ;
 int fm10k_update_rx_drop_en (struct fm10k_intfc*) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int fm10k_set_pauseparam(struct net_device *dev,
    struct ethtool_pauseparam *pause)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 struct fm10k_hw *hw = &interface->hw;

 if (pause->autoneg || !pause->tx_pause)
  return -EINVAL;


 if (hw->mac.type == fm10k_mac_pf)
  interface->rx_pause = pause->rx_pause ? ~0 : 0;
 else if (pause->rx_pause)
  return -EINVAL;

 if (netif_running(dev))
  fm10k_update_rx_drop_en(interface);

 return 0;
}
