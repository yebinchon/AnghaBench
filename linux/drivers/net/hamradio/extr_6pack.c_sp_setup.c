
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int tx_queue_len; scalar_t__ flags; int dev_addr; int broadcast; int type; int addr_len; int * header_ops; int hard_header_len; int mtu; int * netdev_ops; } ;


 int ARPHRD_AX25 ;
 int AX25_ADDR_LEN ;
 int AX25_MAX_HEADER_LEN ;
 int SIXP_MTU ;
 int ax25_bcast ;
 int ax25_defaddr ;
 int ax25_header_ops ;
 int memcpy (int ,int *,int ) ;
 int sp_netdev_ops ;

__attribute__((used)) static void sp_setup(struct net_device *dev)
{

 dev->netdev_ops = &sp_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->mtu = SIXP_MTU;
 dev->hard_header_len = AX25_MAX_HEADER_LEN;
 dev->header_ops = &ax25_header_ops;

 dev->addr_len = AX25_ADDR_LEN;
 dev->type = ARPHRD_AX25;
 dev->tx_queue_len = 10;


 memcpy(dev->broadcast, &ax25_bcast, AX25_ADDR_LEN);
 memcpy(dev->dev_addr, &ax25_defaddr, AX25_ADDR_LEN);

 dev->flags = 0;
}
