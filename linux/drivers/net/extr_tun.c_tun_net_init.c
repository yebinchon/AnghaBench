
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int flags; } ;
struct net_device {int mtu; int flags; scalar_t__ hard_header_len; scalar_t__ max_mtu; int min_mtu; int priv_flags; int * netdev_ops; int type; int addr_len; } ;


 int ARPHRD_NONE ;
 int IFF_LIVE_ADDR_CHANGE ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;


 int IFF_TX_SKB_SHARING ;
 scalar_t__ MAX_MTU ;
 int MIN_MTU ;
 int TUN_TYPE_MASK ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_setup (struct net_device*) ;
 struct tun_struct* netdev_priv (struct net_device*) ;
 int tap_netdev_ops ;
 int tun_netdev_ops ;

__attribute__((used)) static void tun_net_init(struct net_device *dev)
{
 struct tun_struct *tun = netdev_priv(dev);

 switch (tun->flags & TUN_TYPE_MASK) {
 case 128:
  dev->netdev_ops = &tun_netdev_ops;


  dev->hard_header_len = 0;
  dev->addr_len = 0;
  dev->mtu = 1500;


  dev->type = ARPHRD_NONE;
  dev->flags = IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;
  break;

 case 129:
  dev->netdev_ops = &tap_netdev_ops;

  ether_setup(dev);
  dev->priv_flags &= ~IFF_TX_SKB_SHARING;
  dev->priv_flags |= IFF_LIVE_ADDR_CHANGE;

  eth_hw_addr_random(dev);

  break;
 }

 dev->min_mtu = MIN_MTU;
 dev->max_mtu = MAX_MTU - dev->hard_header_len;
}
