
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; int rx_pending; int tx_max_pending; scalar_t__ rx_jumbo_max_pending; scalar_t__ rx_mini_max_pending; int rx_max_pending; } ;
struct axienet_local {int tx_bd_num; int rx_bd_num; } ;


 int RX_BD_NUM_MAX ;
 int TX_BD_NUM_MAX ;
 struct axienet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void axienet_ethtools_get_ringparam(struct net_device *ndev,
        struct ethtool_ringparam *ering)
{
 struct axienet_local *lp = netdev_priv(ndev);

 ering->rx_max_pending = RX_BD_NUM_MAX;
 ering->rx_mini_max_pending = 0;
 ering->rx_jumbo_max_pending = 0;
 ering->tx_max_pending = TX_BD_NUM_MAX;
 ering->rx_pending = lp->rx_bd_num;
 ering->rx_mini_pending = 0;
 ering->rx_jumbo_pending = 0;
 ering->tx_pending = lp->tx_bd_num;
}
