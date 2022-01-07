
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int addr_len; int mtu; scalar_t__ hard_header_len; int type; scalar_t__ flags; int dev_addr; int broadcast; int * header_ops; int * netdev_ops; } ;


 int ARPHRD_AX25 ;
 int AX25_ADDR_LEN ;
 scalar_t__ AX25_BPQ_HEADER_LEN ;
 int AX25_DEF_PACLEN ;
 scalar_t__ AX25_MAX_HEADER_LEN ;
 int ax25_bcast ;
 int ax25_defaddr ;
 int ax25_header_ops ;
 int memcpy (int ,int *,int ) ;
 int scc_netdev_ops ;

__attribute__((used)) static void scc_net_setup(struct net_device *dev)
{
 dev->tx_queue_len = 16;

 dev->netdev_ops = &scc_netdev_ops;
 dev->header_ops = &ax25_header_ops;

 memcpy(dev->broadcast, &ax25_bcast, AX25_ADDR_LEN);
 memcpy(dev->dev_addr, &ax25_defaddr, AX25_ADDR_LEN);

 dev->flags = 0;

 dev->type = ARPHRD_AX25;
 dev->hard_header_len = AX25_MAX_HEADER_LEN + AX25_BPQ_HEADER_LEN;
 dev->mtu = AX25_DEF_PACLEN;
 dev->addr_len = AX25_ADDR_LEN;

}
