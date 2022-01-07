
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b44 {int flags; int dev; } ;


 int B44_CHIP_RESET_FULL ;
 int B44_CHIP_RESET_PARTIAL ;
 int B44_FLAG_EXTERNAL_PHY ;
 int B44_MAC_CTRL ;
 int MAC_CTRL_PHY_PDOWN ;
 int b44_chip_reset (struct b44*,int ) ;
 int b44_disable_ints (struct b44*) ;
 int b44_phy_reset (struct b44*) ;
 int bw32 (struct b44*,int ,int ) ;
 int netdev_info (int ,char*) ;

__attribute__((used)) static void b44_halt(struct b44 *bp)
{
 b44_disable_ints(bp);

 b44_phy_reset(bp);

 netdev_info(bp->dev, "powering down PHY\n");
 bw32(bp, B44_MAC_CTRL, MAC_CTRL_PHY_PDOWN);


 if (bp->flags & B44_FLAG_EXTERNAL_PHY)
  b44_chip_reset(bp, B44_CHIP_RESET_FULL);
 else
  b44_chip_reset(bp, B44_CHIP_RESET_PARTIAL);
}
