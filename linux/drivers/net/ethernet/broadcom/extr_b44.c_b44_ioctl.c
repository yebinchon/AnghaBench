
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ifreq {int dummy; } ;
struct b44 {int flags; int lock; int mii_if; } ;


 int B44_FLAG_EXTERNAL_PHY ;
 int BUG_ON (int) ;
 int EINVAL ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,struct ifreq*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int b44_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct b44 *bp = netdev_priv(dev);
 int err = -EINVAL;

 if (!netif_running(dev))
  goto out;

 spin_lock_irq(&bp->lock);
 if (bp->flags & B44_FLAG_EXTERNAL_PHY) {
  BUG_ON(!dev->phydev);
  err = phy_mii_ioctl(dev->phydev, ifr, cmd);
 } else {
  err = generic_mii_ioctl(&bp->mii_if, if_mii(ifr), cmd, ((void*)0));
 }
 spin_unlock_irq(&bp->lock);
out:
 return err;
}
