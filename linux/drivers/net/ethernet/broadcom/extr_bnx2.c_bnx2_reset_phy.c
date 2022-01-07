
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int mii_bmcr; } ;


 int BMCR_RESET ;
 int EBUSY ;
 int PHY_RESET_MAX_WAIT ;
 int bnx2_read_phy (struct bnx2*,int ,int*) ;
 int bnx2_write_phy (struct bnx2*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int
bnx2_reset_phy(struct bnx2 *bp)
{
 int i;
 u32 reg;

        bnx2_write_phy(bp, bp->mii_bmcr, BMCR_RESET);


 for (i = 0; i < 100; i++) {
  udelay(10);

  bnx2_read_phy(bp, bp->mii_bmcr, &reg);
  if (!(reg & BMCR_RESET)) {
   udelay(20);
   break;
  }
 }
 if (i == 100) {
  return -EBUSY;
 }
 return 0;
}
