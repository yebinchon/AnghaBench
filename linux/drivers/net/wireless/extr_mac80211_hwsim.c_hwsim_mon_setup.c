
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int needs_free_netdev; int* dev_addr; int type; int priv_flags; int * netdev_ops; } ;


 int ARPHRD_IEEE80211_RADIOTAP ;
 int IFF_NO_QUEUE ;
 int eth_zero_addr (int*) ;
 int ether_setup (struct net_device*) ;
 int hwsim_netdev_ops ;

__attribute__((used)) static void hwsim_mon_setup(struct net_device *dev)
{
 dev->netdev_ops = &hwsim_netdev_ops;
 dev->needs_free_netdev = 1;
 ether_setup(dev);
 dev->priv_flags |= IFF_NO_QUEUE;
 dev->type = ARPHRD_IEEE80211_RADIOTAP;
 eth_zero_addr(dev->dev_addr);
 dev->dev_addr[0] = 0x12;
}
