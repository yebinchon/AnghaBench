
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int phy_flags; int serdes_an_pending; scalar_t__ link_up; int autoneg; int phy_lock; void* current_interval; int mii_bmcr; } ;


 int AUTONEG_SPEED ;
 int BMCR_ANENABLE ;
 int BNX2_PHY_FLAG_2_5G_CAPABLE ;
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ;
 void* BNX2_SERDES_FORCED_TIMEOUT ;
 void* BNX2_TIMER_INTERVAL ;
 int bnx2_disable_forced_2g5 (struct bnx2*) ;
 int bnx2_enable_forced_2g5 (struct bnx2*) ;
 int bnx2_read_phy (struct bnx2*,int ,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
bnx2_5708_serdes_timer(struct bnx2 *bp)
{
 if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP)
  return;

 if ((bp->phy_flags & BNX2_PHY_FLAG_2_5G_CAPABLE) == 0) {
  bp->serdes_an_pending = 0;
  return;
 }

 spin_lock(&bp->phy_lock);
 if (bp->serdes_an_pending)
  bp->serdes_an_pending--;
 else if ((bp->link_up == 0) && (bp->autoneg & AUTONEG_SPEED)) {
  u32 bmcr;

  bnx2_read_phy(bp, bp->mii_bmcr, &bmcr);
  if (bmcr & BMCR_ANENABLE) {
   bnx2_enable_forced_2g5(bp);
   bp->current_interval = BNX2_SERDES_FORCED_TIMEOUT;
  } else {
   bnx2_disable_forced_2g5(bp);
   bp->serdes_an_pending = 2;
   bp->current_interval = BNX2_TIMER_INTERVAL;
  }

 } else
  bp->current_interval = BNX2_TIMER_INTERVAL;

 spin_unlock(&bp->phy_lock);
}
