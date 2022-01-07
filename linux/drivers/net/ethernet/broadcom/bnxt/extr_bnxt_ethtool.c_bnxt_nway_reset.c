
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnxt_link_info {int autoneg; } ;
struct bnxt {struct bnxt_link_info link_info; } ;


 int BNXT_AUTONEG_SPEED ;
 int BNXT_SINGLE_PF (struct bnxt*) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int bnxt_hwrm_set_link_setting (struct bnxt*,int,int) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bnxt_nway_reset(struct net_device *dev)
{
 int rc = 0;

 struct bnxt *bp = netdev_priv(dev);
 struct bnxt_link_info *link_info = &bp->link_info;

 if (!BNXT_SINGLE_PF(bp))
  return -EOPNOTSUPP;

 if (!(link_info->autoneg & BNXT_AUTONEG_SPEED))
  return -EINVAL;

 if (netif_running(dev))
  rc = bnxt_hwrm_set_link_setting(bp, 1, 0);

 return rc;
}
