
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct atl1_adapter {int lock; int mii; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct atl1_adapter* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int atl1_mii_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 struct atl1_adapter *adapter = netdev_priv(netdev);
 unsigned long flags;
 int retval;

 if (!netif_running(netdev))
  return -EINVAL;

 spin_lock_irqsave(&adapter->lock, flags);
 retval = generic_mii_ioctl(&adapter->mii, if_mii(ifr), cmd, ((void*)0));
 spin_unlock_irqrestore(&adapter->lock, flags);

 return retval;
}
