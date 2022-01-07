
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int broadcast; int priv_destructor; int * netdev_ops; int priv_flags; int max_mtu; scalar_t__ min_mtu; } ;


 int ETH_MAX_MTU ;
 int IFF_NO_QUEUE ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 int eth_zero_addr (int ) ;
 int ether_setup (struct net_device*) ;
 int macsec_free_netdev ;
 int macsec_netdev_ops ;
 int macsec_type ;

__attribute__((used)) static void macsec_setup(struct net_device *dev)
{
 ether_setup(dev);
 dev->min_mtu = 0;
 dev->max_mtu = ETH_MAX_MTU;
 dev->priv_flags |= IFF_NO_QUEUE;
 dev->netdev_ops = &macsec_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = macsec_free_netdev;
 SET_NETDEV_DEVTYPE(dev, &macsec_type);

 eth_zero_addr(dev->broadcast);
}
