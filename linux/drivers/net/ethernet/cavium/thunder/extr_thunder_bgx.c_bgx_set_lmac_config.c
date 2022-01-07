
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u64 ;
struct lmac {int lmac_type; size_t lane_to_sds; int lmacid; } ;
struct bgx {scalar_t__ is_rgx; int is_dlm; struct lmac* lmac; } ;


 int BGX_CMRX_CFG ;
 int BGX_MODE_INVALID ;
 int BGX_MODE_RGMII ;
 int bgx_reg_read (struct bgx*,size_t,int ) ;
 int lmac_set_lane2sds (struct bgx*,struct lmac*) ;
 int lmac_set_training (struct bgx*,struct lmac*,int ) ;

__attribute__((used)) static void bgx_set_lmac_config(struct bgx *bgx, u8 idx)
{
 struct lmac *lmac;
 u64 cmr_cfg;
 u8 lmac_type;
 u8 lane_to_sds;

 lmac = &bgx->lmac[idx];

 if (!bgx->is_dlm || bgx->is_rgx) {



  cmr_cfg = bgx_reg_read(bgx, 0, BGX_CMRX_CFG);
  lmac->lmac_type = (cmr_cfg >> 8) & 0x07;
  if (bgx->is_rgx)
   lmac->lmac_type = BGX_MODE_RGMII;
  lmac_set_training(bgx, lmac, 0);
  lmac_set_lane2sds(bgx, lmac);
  return;
 }






 cmr_cfg = bgx_reg_read(bgx, idx, BGX_CMRX_CFG);
 lmac_type = (u8)((cmr_cfg >> 8) & 0x07);
 lane_to_sds = (u8)(cmr_cfg & 0xFF);

 if ((lmac_type == 0) && (lane_to_sds == 0xE4))
  lmac->lmac_type = BGX_MODE_INVALID;
 else
  lmac->lmac_type = lmac_type;
 lmac->lane_to_sds = lane_to_sds;
 lmac_set_training(bgx, lmac, lmac->lmacid);
}
