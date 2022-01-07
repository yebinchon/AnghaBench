
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int needs_free_netdev; int perm_addr; int addr_assign_type; int * ethtool_ops; scalar_t__ hard_header_len; int type; int * header_ops; int tx_queue_len; int dev_addr; int needed_headroom; int mtu; int * netdev_ops; } ;


 int ARPHRD_RAWIP ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int NET_ADDR_RANDOM ;
 int RMNET_DFLT_PACKET_SIZE ;
 int RMNET_NEEDED_HEADROOM ;
 int RMNET_TX_QUEUE_LEN ;
 int eth_random_addr (int ) ;
 int rmnet_ethtool_ops ;
 int rmnet_vnd_ops ;

void rmnet_vnd_setup(struct net_device *rmnet_dev)
{
 rmnet_dev->netdev_ops = &rmnet_vnd_ops;
 rmnet_dev->mtu = RMNET_DFLT_PACKET_SIZE;
 rmnet_dev->needed_headroom = RMNET_NEEDED_HEADROOM;
 eth_random_addr(rmnet_dev->dev_addr);
 rmnet_dev->tx_queue_len = RMNET_TX_QUEUE_LEN;


 rmnet_dev->header_ops = ((void*)0);
 rmnet_dev->type = ARPHRD_RAWIP;
 rmnet_dev->hard_header_len = 0;
 rmnet_dev->flags &= ~(IFF_BROADCAST | IFF_MULTICAST);

 rmnet_dev->needs_free_netdev = 1;
 rmnet_dev->ethtool_ops = &rmnet_ethtool_ops;


 rmnet_dev->addr_assign_type = NET_ADDR_RANDOM;
 eth_random_addr(rmnet_dev->perm_addr);
}
