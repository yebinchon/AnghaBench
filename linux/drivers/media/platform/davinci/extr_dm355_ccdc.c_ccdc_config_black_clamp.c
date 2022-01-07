
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccdc_black_clamp {int dc_sub; int start_pixel; int sample_pixel; int sample_ln; int b_clamp_enable; } ;


 int CCDC_BLK_CLAMP_ENABLE ;
 int CCDC_BLK_DC_SUB_MASK ;
 int CCDC_BLK_SAMPLE_LN_MASK ;
 int CCDC_BLK_SAMPLE_LN_SHIFT ;
 int CCDC_BLK_ST_PXL_MASK ;
 int CCDC_NUM_LINE_CALC_MASK ;
 int CCDC_NUM_LINE_CALC_SHIFT ;
 int CLAMP ;
 int DCSUB ;
 int regw (int,int ) ;

__attribute__((used)) static void ccdc_config_black_clamp(struct ccdc_black_clamp *bclamp)
{
 u32 val;

 if (!bclamp->b_clamp_enable) {

  regw(bclamp->dc_sub & CCDC_BLK_DC_SUB_MASK, DCSUB);
  regw(0x0000, CLAMP);
  return;
 }

 val = (bclamp->start_pixel & CCDC_BLK_ST_PXL_MASK) |
       ((bclamp->sample_pixel & CCDC_BLK_SAMPLE_LN_MASK) <<
  CCDC_BLK_SAMPLE_LN_SHIFT) | CCDC_BLK_CLAMP_ENABLE;
 regw(val, CLAMP);


 val = (bclamp->sample_ln & CCDC_NUM_LINE_CALC_MASK)
   << CCDC_NUM_LINE_CALC_SHIFT;
 regw(val, DCSUB);
}
