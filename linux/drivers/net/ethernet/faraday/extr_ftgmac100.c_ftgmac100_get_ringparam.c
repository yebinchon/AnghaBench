
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ftgmac100 {int tx_q_entries; int rx_q_entries; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;


 int MAX_RX_QUEUE_ENTRIES ;
 int MAX_TX_QUEUE_ENTRIES ;
 int memset (struct ethtool_ringparam*,int ,int) ;
 struct ftgmac100* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ftgmac100_get_ringparam(struct net_device *netdev,
        struct ethtool_ringparam *ering)
{
 struct ftgmac100 *priv = netdev_priv(netdev);

 memset(ering, 0, sizeof(*ering));
 ering->rx_max_pending = MAX_RX_QUEUE_ENTRIES;
 ering->tx_max_pending = MAX_TX_QUEUE_ENTRIES;
 ering->rx_pending = priv->rx_q_entries;
 ering->tx_pending = priv->tx_q_entries;
}
