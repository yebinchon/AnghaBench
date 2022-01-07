
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct bnx2 {int flags; int wol; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BNX2_FLAG_NO_WOL ;
 int EINVAL ;
 int WAKE_MAGIC ;
 int device_set_wakeup_enable (int *,int) ;
 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
bnx2_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct bnx2 *bp = netdev_priv(dev);

 if (wol->wolopts & ~WAKE_MAGIC)
  return -EINVAL;

 if (wol->wolopts & WAKE_MAGIC) {
  if (bp->flags & BNX2_FLAG_NO_WOL)
   return -EINVAL;

  bp->wol = 1;
 }
 else {
  bp->wol = 0;
 }

 device_set_wakeup_enable(&bp->pdev->dev, bp->wol);

 return 0;
}
