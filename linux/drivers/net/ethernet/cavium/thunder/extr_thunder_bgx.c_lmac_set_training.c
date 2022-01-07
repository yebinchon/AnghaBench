
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmac {scalar_t__ lmac_type; int use_training; } ;
struct bgx {int dummy; } ;


 scalar_t__ BGX_MODE_10G_KR ;
 scalar_t__ BGX_MODE_40G_KR ;
 int BGX_SPUX_BR_PMD_CRTL ;
 int SPU_PMD_CRTL_TRAIN_EN ;
 int bgx_reg_read (struct bgx*,int,int ) ;

__attribute__((used)) static void lmac_set_training(struct bgx *bgx, struct lmac *lmac, int lmacid)
{
 if ((lmac->lmac_type != BGX_MODE_10G_KR) &&
     (lmac->lmac_type != BGX_MODE_40G_KR)) {
  lmac->use_training = 0;
  return;
 }

 lmac->use_training = bgx_reg_read(bgx, lmacid, BGX_SPUX_BR_PMD_CRTL) &
       SPU_PMD_CRTL_TRAIN_EN;
}
