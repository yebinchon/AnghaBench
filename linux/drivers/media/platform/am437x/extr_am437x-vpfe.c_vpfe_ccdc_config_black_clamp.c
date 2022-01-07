
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vpfe_ccdc_black_clamp {int dc_sub; int sgain; int start_pixel; int sample_ln; int sample_pixel; int enable; } ;
struct vpfe_ccdc {int dummy; } ;


 int VPFE_BLK_CLAMP_ENABLE ;
 int VPFE_BLK_DC_SUB_MASK ;
 int VPFE_BLK_SAMPLE_LINE_MASK ;
 int VPFE_BLK_SAMPLE_LINE_SHIFT ;
 int VPFE_BLK_SAMPLE_LN_MASK ;
 int VPFE_BLK_SAMPLE_LN_SHIFT ;
 int VPFE_BLK_SGAIN_MASK ;
 int VPFE_BLK_ST_PXL_MASK ;
 int VPFE_BLK_ST_PXL_SHIFT ;
 int VPFE_CLAMP ;
 int VPFE_CLAMP_DEFAULT_VAL ;
 int VPFE_DCSUB ;
 int VPFE_DCSUB_DEFAULT_VAL ;
 int vpfe_reg_write (struct vpfe_ccdc*,int,int ) ;

__attribute__((used)) static void
vpfe_ccdc_config_black_clamp(struct vpfe_ccdc *ccdc,
        struct vpfe_ccdc_black_clamp *bclamp)
{
 u32 val;

 if (!bclamp->enable) {

  val = (bclamp->dc_sub) & VPFE_BLK_DC_SUB_MASK;
  vpfe_reg_write(ccdc, val, VPFE_DCSUB);
  vpfe_reg_write(ccdc, VPFE_CLAMP_DEFAULT_VAL, VPFE_CLAMP);
  return;
 }




 val = ((bclamp->sgain & VPFE_BLK_SGAIN_MASK) |
        ((bclamp->start_pixel & VPFE_BLK_ST_PXL_MASK) <<
  VPFE_BLK_ST_PXL_SHIFT) |
        ((bclamp->sample_ln & VPFE_BLK_SAMPLE_LINE_MASK) <<
  VPFE_BLK_SAMPLE_LINE_SHIFT) |
        ((bclamp->sample_pixel & VPFE_BLK_SAMPLE_LN_MASK) <<
  VPFE_BLK_SAMPLE_LN_SHIFT) | VPFE_BLK_CLAMP_ENABLE);
 vpfe_reg_write(ccdc, val, VPFE_CLAMP);

 vpfe_reg_write(ccdc, VPFE_DCSUB_DEFAULT_VAL, VPFE_DCSUB);
}
