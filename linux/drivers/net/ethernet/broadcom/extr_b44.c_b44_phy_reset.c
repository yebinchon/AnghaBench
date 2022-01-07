
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b44 {int flags; int dev; } ;


 int B44_FLAG_EXTERNAL_PHY ;
 int BMCR_RESET ;
 int ENODEV ;
 int MII_BMCR ;
 int b44_readphy (struct b44*,int ,int*) ;
 int b44_writephy (struct b44*,int ,int) ;
 int netdev_err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static int b44_phy_reset(struct b44 *bp)
{
 u32 val;
 int err;

 if (bp->flags & B44_FLAG_EXTERNAL_PHY)
  return 0;
 err = b44_writephy(bp, MII_BMCR, BMCR_RESET);
 if (err)
  return err;
 udelay(100);
 err = b44_readphy(bp, MII_BMCR, &val);
 if (!err) {
  if (val & BMCR_RESET) {
   netdev_err(bp->dev, "PHY Reset would not complete\n");
   err = -ENODEV;
  }
 }

 return err;
}
