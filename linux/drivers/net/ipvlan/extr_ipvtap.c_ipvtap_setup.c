
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; int tx_queue_len; } ;


 int IFF_NO_QUEUE ;
 int TUN_READQ_SIZE ;
 int ipvlan_link_setup (struct net_device*) ;

__attribute__((used)) static void ipvtap_setup(struct net_device *dev)
{
 ipvlan_link_setup(dev);
 dev->tx_queue_len = TUN_READQ_SIZE;
 dev->priv_flags &= ~IFF_NO_QUEUE;
}
