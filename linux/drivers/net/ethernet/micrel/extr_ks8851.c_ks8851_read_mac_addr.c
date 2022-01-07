
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * dev_addr; } ;
struct ks8851_net {int lock; } ;


 int ETH_ALEN ;
 int KS_MAR (int) ;
 int ks8851_rdreg8 (struct ks8851_net*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ks8851_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ks8851_read_mac_addr(struct net_device *dev)
{
 struct ks8851_net *ks = netdev_priv(dev);
 int i;

 mutex_lock(&ks->lock);

 for (i = 0; i < ETH_ALEN; i++)
  dev->dev_addr[i] = ks8851_rdreg8(ks, KS_MAR(i));

 mutex_unlock(&ks->lock);
}
