
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int phy_flags; int phy_lock; int mii_bmsr1; scalar_t__ link_up; int dev; } ;


 int BMSR_LSTATUS ;
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ;
 int ENODEV ;
 int bnx2_disable_bmsr1 (struct bnx2*) ;
 int bnx2_enable_bmsr1 (struct bnx2*) ;
 int bnx2_read_phy (struct bnx2*,int ,int*) ;
 int netif_running (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
bnx2_test_link(struct bnx2 *bp)
{
 u32 bmsr;

 if (!netif_running(bp->dev))
  return -ENODEV;

 if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP) {
  if (bp->link_up)
   return 0;
  return -ENODEV;
 }
 spin_lock_bh(&bp->phy_lock);
 bnx2_enable_bmsr1(bp);
 bnx2_read_phy(bp, bp->mii_bmsr1, &bmsr);
 bnx2_read_phy(bp, bp->mii_bmsr1, &bmsr);
 bnx2_disable_bmsr1(bp);
 spin_unlock_bh(&bp->phy_lock);

 if (bmsr & BMSR_LSTATUS) {
  return 0;
 }
 return -ENODEV;
}
