
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {scalar_t__* phys; int lock; int mii_if; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {scalar_t__ phy_id; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int SIOCSMIIREG ;
 int check_duplex (struct net_device*) ;
 int generic_mii_ioctl (int *,struct mii_ioctl_data*,int,int *) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int netdev_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct netdev_private *np = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(rq);
 int rc;

 if (!netif_running(dev))
  return -EINVAL;

 spin_lock_irq(&np->lock);
 rc = generic_mii_ioctl(&np->mii_if, data, cmd, ((void*)0));
 spin_unlock_irq(&np->lock);

 if ((cmd == SIOCSMIIREG) && (data->phy_id == np->phys[0]))
  check_duplex(dev);

 return rc;
}
