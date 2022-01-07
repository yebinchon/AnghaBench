
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int q_num_tx_buffers; int q_num_rx_buffers; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int tx_max_pending; int rx_pending; int rx_max_pending; } ;


 int NUM_RX_BDS_MAX ;
 int NUM_TX_BDS_MAX ;
 struct qede_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void qede_get_ringparam(struct net_device *dev,
          struct ethtool_ringparam *ering)
{
 struct qede_dev *edev = netdev_priv(dev);

 ering->rx_max_pending = NUM_RX_BDS_MAX;
 ering->rx_pending = edev->q_num_rx_buffers;
 ering->tx_max_pending = NUM_TX_BDS_MAX;
 ering->tx_pending = edev->q_num_tx_buffers;
}
