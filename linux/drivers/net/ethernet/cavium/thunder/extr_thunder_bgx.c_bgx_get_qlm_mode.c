
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct lmac {size_t lmacid; int use_training; int lmac_type; } ;
struct bgx {size_t max_lmac; int lmac_count; struct lmac* lmac; } ;


 int BGX_CMR_RX_LMACS ;
 int BGX_MODE_INVALID ;
 int bgx_print_qlm_mode (struct bgx*,size_t) ;
 int bgx_reg_read (struct bgx*,int ,int ) ;
 int bgx_set_lmac_config (struct bgx*,size_t) ;

__attribute__((used)) static void bgx_get_qlm_mode(struct bgx *bgx)
{
 struct lmac *lmac;
 u8 idx;


 for (idx = 0; idx < bgx->max_lmac; idx++) {
  lmac = &bgx->lmac[idx];
  lmac->lmacid = idx;
  lmac->lmac_type = BGX_MODE_INVALID;
  lmac->use_training = 0;
 }


 bgx->lmac_count = bgx_reg_read(bgx, 0, BGX_CMR_RX_LMACS) & 0x7;
 if (bgx->lmac_count > bgx->max_lmac)
  bgx->lmac_count = bgx->max_lmac;

 for (idx = 0; idx < bgx->lmac_count; idx++) {
  bgx_set_lmac_config(bgx, idx);
  bgx_print_qlm_mode(bgx, idx);
 }
}
