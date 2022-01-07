
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hard_header_len; int tx_queue_len; int* broadcast; int flags; int watchdog_timeo; int addr_len; int mtu; int * header_ops; int * netdev_ops; int type; } ;
struct arc_hardware {int dummy; } ;


 int ARCNET_ALEN ;
 int ARPHRD_ARCNET ;
 int IFF_BROADCAST ;
 int TX_TIMEOUT ;
 int arcnet_header_ops ;
 int arcnet_netdev_ops ;
 int choose_mtu () ;

__attribute__((used)) static void arcdev_setup(struct net_device *dev)
{
 dev->type = ARPHRD_ARCNET;
 dev->netdev_ops = &arcnet_netdev_ops;
 dev->header_ops = &arcnet_header_ops;
 dev->hard_header_len = sizeof(struct arc_hardware);
 dev->mtu = choose_mtu();

 dev->addr_len = ARCNET_ALEN;
 dev->tx_queue_len = 100;
 dev->broadcast[0] = 0x00;
 dev->watchdog_timeo = TX_TIMEOUT;


 dev->flags = IFF_BROADCAST;
}
