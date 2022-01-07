
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_local {int lock; } ;
struct net_device {int dummy; } ;


 unsigned int BMCR_RESET ;
 int MII_BMCR ;
 int msleep (int) ;
 struct smc_local* netdev_priv (struct net_device*) ;
 unsigned int smc_phy_read (struct net_device*,int,int ) ;
 int smc_phy_write (struct net_device*,int,int ,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int smc_phy_reset(struct net_device *dev, int phy)
{
 struct smc_local *lp = netdev_priv(dev);
 unsigned int bmcr;
 int timeout;

 smc_phy_write(dev, phy, MII_BMCR, BMCR_RESET);

 for (timeout = 2; timeout; timeout--) {
  spin_unlock_irq(&lp->lock);
  msleep(50);
  spin_lock_irq(&lp->lock);

  bmcr = smc_phy_read(dev, phy, MII_BMCR);
  if (!(bmcr & BMCR_RESET))
   break;
 }

 return bmcr & BMCR_RESET;
}
