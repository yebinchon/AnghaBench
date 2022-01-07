
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bnx2 {int autoneg; int phy_flags; int serdes_an_pending; int phy_lock; int mii_bmcr; scalar_t__ current_interval; int timer; int phy_port; } ;


 int AUTONEG_SPEED ;
 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_LOOPBACK ;
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ;
 int BNX2_PHY_FLAG_SERDES ;
 scalar_t__ BNX2_SERDES_AN_TIMEOUT ;
 int EAGAIN ;
 int EINVAL ;
 int bnx2_read_phy (struct bnx2*,int ,int*) ;
 int bnx2_setup_remote_phy (struct bnx2*,int ) ;
 int bnx2_write_phy (struct bnx2*,int ,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int msleep (int) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
bnx2_nway_reset(struct net_device *dev)
{
 struct bnx2 *bp = netdev_priv(dev);
 u32 bmcr;

 if (!netif_running(dev))
  return -EAGAIN;

 if (!(bp->autoneg & AUTONEG_SPEED)) {
  return -EINVAL;
 }

 spin_lock_bh(&bp->phy_lock);

 if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP) {
  int rc;

  rc = bnx2_setup_remote_phy(bp, bp->phy_port);
  spin_unlock_bh(&bp->phy_lock);
  return rc;
 }


 if (bp->phy_flags & BNX2_PHY_FLAG_SERDES) {
  bnx2_write_phy(bp, bp->mii_bmcr, BMCR_LOOPBACK);
  spin_unlock_bh(&bp->phy_lock);

  msleep(20);

  spin_lock_bh(&bp->phy_lock);

  bp->current_interval = BNX2_SERDES_AN_TIMEOUT;
  bp->serdes_an_pending = 1;
  mod_timer(&bp->timer, jiffies + bp->current_interval);
 }

 bnx2_read_phy(bp, bp->mii_bmcr, &bmcr);
 bmcr &= ~BMCR_LOOPBACK;
 bnx2_write_phy(bp, bp->mii_bmcr, bmcr | BMCR_ANRESTART | BMCR_ANENABLE);

 spin_unlock_bh(&bp->phy_lock);

 return 0;
}
