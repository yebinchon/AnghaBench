
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int phy_flags; } ;


 int BNX2_PHY_FLAG_NO_PARALLEL ;
 int MII_BNX2_DSP_ADDRESS ;
 int MII_BNX2_DSP_RW_PORT ;
 int MII_BNX2_MISC_SHADOW ;
 int MII_EXPAND_REG1 ;
 int MII_EXPAND_REG1_RUDI_C ;
 int MISC_SHDW_AN_DBG ;
 int MISC_SHDW_AN_DBG_NOSYNC ;
 int MISC_SHDW_AN_DBG_RUDI_INVALID ;
 int MISC_SHDW_MODE_CTL ;
 int MISC_SHDW_MODE_CTL_SIG_DET ;
 int bnx2_read_phy (struct bnx2*,int ,int*) ;
 int bnx2_write_phy (struct bnx2*,int ,int ) ;

__attribute__((used)) static int
bnx2_5706_serdes_has_link(struct bnx2 *bp)
{
 u32 mode_ctl, an_dbg, exp;

 if (bp->phy_flags & BNX2_PHY_FLAG_NO_PARALLEL)
  return 0;

 bnx2_write_phy(bp, MII_BNX2_MISC_SHADOW, MISC_SHDW_MODE_CTL);
 bnx2_read_phy(bp, MII_BNX2_MISC_SHADOW, &mode_ctl);

 if (!(mode_ctl & MISC_SHDW_MODE_CTL_SIG_DET))
  return 0;

 bnx2_write_phy(bp, MII_BNX2_MISC_SHADOW, MISC_SHDW_AN_DBG);
 bnx2_read_phy(bp, MII_BNX2_MISC_SHADOW, &an_dbg);
 bnx2_read_phy(bp, MII_BNX2_MISC_SHADOW, &an_dbg);

 if (an_dbg & (MISC_SHDW_AN_DBG_NOSYNC | MISC_SHDW_AN_DBG_RUDI_INVALID))
  return 0;

 bnx2_write_phy(bp, MII_BNX2_DSP_ADDRESS, MII_EXPAND_REG1);
 bnx2_read_phy(bp, MII_BNX2_DSP_RW_PORT, &exp);
 bnx2_read_phy(bp, MII_BNX2_DSP_RW_PORT, &exp);

 if (exp & MII_EXPAND_REG1_RUDI_C)
  return 0;

 return 1;
}
