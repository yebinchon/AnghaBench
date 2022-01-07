
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ccdc_black_clamp {int dc_sub; int sgain; int start_pixel; int sample_ln; int sample_pixel; int enable; } ;
struct TYPE_2__ {int dev; } ;


 int CCDC_BLK_CLAMP_ENABLE ;
 int CCDC_BLK_DC_SUB_MASK ;
 int CCDC_BLK_SAMPLE_LINE_MASK ;
 int CCDC_BLK_SAMPLE_LINE_SHIFT ;
 int CCDC_BLK_SAMPLE_LN_MASK ;
 int CCDC_BLK_SAMPLE_LN_SHIFT ;
 int CCDC_BLK_SGAIN_MASK ;
 int CCDC_BLK_ST_PXL_MASK ;
 int CCDC_BLK_ST_PXL_SHIFT ;
 int CCDC_CLAMP ;
 int CCDC_CLAMP_DEFAULT_VAL ;
 int CCDC_DCSUB ;
 int CCDC_DCSUB_DEFAULT_VAL ;
 TYPE_1__ ccdc_cfg ;
 int dev_dbg (int ,char*,...) ;
 int regw (int,int ) ;

__attribute__((used)) static void ccdc_config_black_clamp(struct ccdc_black_clamp *bclamp)
{
 u32 val;

 if (!bclamp->enable) {

  val = (bclamp->dc_sub) & CCDC_BLK_DC_SUB_MASK;
  regw(val, CCDC_DCSUB);
  dev_dbg(ccdc_cfg.dev, "\nWriting 0x%x to DCSUB...\n", val);
  regw(CCDC_CLAMP_DEFAULT_VAL, CCDC_CLAMP);
  dev_dbg(ccdc_cfg.dev, "\nWriting 0x0000 to CLAMP...\n");
  return;
 }




 val = ((bclamp->sgain & CCDC_BLK_SGAIN_MASK) |
        ((bclamp->start_pixel & CCDC_BLK_ST_PXL_MASK) <<
  CCDC_BLK_ST_PXL_SHIFT) |
        ((bclamp->sample_ln & CCDC_BLK_SAMPLE_LINE_MASK) <<
  CCDC_BLK_SAMPLE_LINE_SHIFT) |
        ((bclamp->sample_pixel & CCDC_BLK_SAMPLE_LN_MASK) <<
  CCDC_BLK_SAMPLE_LN_SHIFT) | CCDC_BLK_CLAMP_ENABLE);
 regw(val, CCDC_CLAMP);
 dev_dbg(ccdc_cfg.dev, "\nWriting 0x%x to CLAMP...\n", val);

 regw(CCDC_DCSUB_DEFAULT_VAL, CCDC_DCSUB);
 dev_dbg(ccdc_cfg.dev, "\nWriting 0x00000000 to DCSUB...\n");
}
