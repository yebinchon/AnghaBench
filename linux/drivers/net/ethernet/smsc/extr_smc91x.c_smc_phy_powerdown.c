
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_id; } ;
struct smc_local {scalar_t__ phy_type; int phy_configure; TYPE_1__ mii; } ;
struct net_device {int dummy; } ;


 unsigned int BMCR_PDOWN ;
 int MII_BMCR ;
 int cancel_work_sync (int *) ;
 struct smc_local* netdev_priv (struct net_device*) ;
 unsigned int smc_phy_read (struct net_device*,int,int ) ;
 int smc_phy_write (struct net_device*,int,int ,unsigned int) ;

__attribute__((used)) static void smc_phy_powerdown(struct net_device *dev)
{
 struct smc_local *lp = netdev_priv(dev);
 unsigned int bmcr;
 int phy = lp->mii.phy_id;

 if (lp->phy_type == 0)
  return;




 cancel_work_sync(&lp->phy_configure);

 bmcr = smc_phy_read(dev, phy, MII_BMCR);
 smc_phy_write(dev, phy, MII_BMCR, bmcr | BMCR_PDOWN);
}
