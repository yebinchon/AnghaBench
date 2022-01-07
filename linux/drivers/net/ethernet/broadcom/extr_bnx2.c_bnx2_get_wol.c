
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int sopass; void* wolopts; void* supported; } ;
struct bnx2 {int flags; scalar_t__ wol; } ;


 int BNX2_FLAG_NO_WOL ;
 void* WAKE_MAGIC ;
 int memset (int *,int ,int) ;
 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
bnx2_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct bnx2 *bp = netdev_priv(dev);

 if (bp->flags & BNX2_FLAG_NO_WOL) {
  wol->supported = 0;
  wol->wolopts = 0;
 }
 else {
  wol->supported = WAKE_MAGIC;
  if (bp->wol)
   wol->wolopts = WAKE_MAGIC;
  else
   wol->wolopts = 0;
 }
 memset(&wol->sopass, 0, sizeof(wol->sopass));
}
