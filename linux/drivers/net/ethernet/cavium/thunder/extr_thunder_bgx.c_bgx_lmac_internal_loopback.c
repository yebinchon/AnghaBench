
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct lmac {scalar_t__ is_sgmii; } ;
struct bgx {struct lmac* lmac; } ;


 int BGX_GMP_PCS_MRX_CTL ;
 int BGX_SPUX_CONTROL1 ;
 int PCS_MRX_CTL_LOOPBACK1 ;
 int SPU_CTL_LOOPBACK ;
 int bgx_reg_read (struct bgx*,int,int ) ;
 int bgx_reg_write (struct bgx*,int,int ,int ) ;
 struct bgx* get_bgx (int,int) ;

void bgx_lmac_internal_loopback(int node, int bgx_idx,
    int lmac_idx, bool enable)
{
 struct bgx *bgx;
 struct lmac *lmac;
 u64 cfg;

 bgx = get_bgx(node, bgx_idx);
 if (!bgx)
  return;

 lmac = &bgx->lmac[lmac_idx];
 if (lmac->is_sgmii) {
  cfg = bgx_reg_read(bgx, lmac_idx, BGX_GMP_PCS_MRX_CTL);
  if (enable)
   cfg |= PCS_MRX_CTL_LOOPBACK1;
  else
   cfg &= ~PCS_MRX_CTL_LOOPBACK1;
  bgx_reg_write(bgx, lmac_idx, BGX_GMP_PCS_MRX_CTL, cfg);
 } else {
  cfg = bgx_reg_read(bgx, lmac_idx, BGX_SPUX_CONTROL1);
  if (enable)
   cfg |= SPU_CTL_LOOPBACK;
  else
   cfg &= ~SPU_CTL_LOOPBACK;
  bgx_reg_write(bgx, lmac_idx, BGX_SPUX_CONTROL1, cfg);
 }
}
