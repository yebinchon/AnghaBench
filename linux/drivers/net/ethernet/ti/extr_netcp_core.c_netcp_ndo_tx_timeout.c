
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netcp_intf {int tx_pool_size; int ndev_dev; int tx_pool; } ;
struct net_device {int dummy; } ;


 int dev_err (int ,char*,unsigned int) ;
 unsigned int knav_pool_count (int ) ;
 int netcp_process_tx_compl_packets (struct netcp_intf*,int ) ;
 struct netcp_intf* netdev_priv (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;

__attribute__((used)) static void netcp_ndo_tx_timeout(struct net_device *ndev)
{
 struct netcp_intf *netcp = netdev_priv(ndev);
 unsigned int descs = knav_pool_count(netcp->tx_pool);

 dev_err(netcp->ndev_dev, "transmit timed out tx descs(%d)\n", descs);
 netcp_process_tx_compl_packets(netcp, netcp->tx_pool_size);
 netif_trans_update(ndev);
 netif_tx_wake_all_queues(ndev);
}
