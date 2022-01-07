
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_eee {scalar_t__ lp_advertised; int eee_active; scalar_t__ tx_lpi_enabled; scalar_t__ advertised; int eee_enabled; } ;
struct bnxt {int flags; struct ethtool_eee eee; } ;


 int BNXT_FLAG_EEE_CAP ;
 int EOPNOTSUPP ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_get_eee(struct net_device *dev, struct ethtool_eee *edata)
{
 struct bnxt *bp = netdev_priv(dev);

 if (!(bp->flags & BNXT_FLAG_EEE_CAP))
  return -EOPNOTSUPP;

 *edata = bp->eee;
 if (!bp->eee.eee_enabled) {



  edata->advertised = 0;
  edata->tx_lpi_enabled = 0;
 }

 if (!bp->eee.eee_active)
  edata->lp_advertised = 0;

 return 0;
}
