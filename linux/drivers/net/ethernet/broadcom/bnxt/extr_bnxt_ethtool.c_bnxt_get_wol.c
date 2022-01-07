
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {void* wolopts; void* supported; int sopass; } ;
struct bnxt {int flags; scalar_t__ wol; } ;


 int BNXT_FLAG_WOL_CAP ;
 void* WAKE_MAGIC ;
 int memset (int *,int ,int) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bnxt_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct bnxt *bp = netdev_priv(dev);

 wol->supported = 0;
 wol->wolopts = 0;
 memset(&wol->sopass, 0, sizeof(wol->sopass));
 if (bp->flags & BNXT_FLAG_WOL_CAP) {
  wol->supported = WAKE_MAGIC;
  if (bp->wol)
   wol->wolopts = WAKE_MAGIC;
 }
}
