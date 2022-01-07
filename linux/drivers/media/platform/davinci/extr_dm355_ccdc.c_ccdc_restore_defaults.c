
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* b_mg; void* gr_cy; void* gb_g; void* r_ye; } ;
struct TYPE_5__ {TYPE_1__ gain; } ;
struct TYPE_6__ {int dev; TYPE_2__ bayer; } ;


 int CCDC_REG_LAST ;
 int CULH ;
 int CULH_DEFAULT ;
 int CULV ;
 int CULV_DEFAULT ;
 int EFAULT ;
 void* GAIN_DEFAULT ;
 int LSCCFG2 ;
 int LSCCFG2_DEFAULT ;
 int MODESET ;
 int MODESET_DEFAULT ;
 int OUTCLIP ;
 int OUTCLIP_DEFAULT ;
 int VPSS_CCDCIN ;
 int VPSS_CCDC_CLOCK ;
 TYPE_3__ ccdc_cfg ;
 int ccdc_config_gain_offset () ;
 int dev_dbg (int ,char*) ;
 int regw (int ,int) ;
 scalar_t__ vpss_enable_clock (int ,int) ;
 scalar_t__ vpss_select_ccdc_source (int ) ;

__attribute__((used)) static int ccdc_restore_defaults(void)
{
 int i;

 dev_dbg(ccdc_cfg.dev, "\nstarting ccdc_restore_defaults...");

 for (i = 0; i <= CCDC_REG_LAST; i += 4)
  regw(0, i);


 regw(MODESET_DEFAULT, MODESET);

 regw(CULH_DEFAULT, CULH);
 regw(CULV_DEFAULT, CULV);

 ccdc_cfg.bayer.gain.r_ye = GAIN_DEFAULT;
 ccdc_cfg.bayer.gain.gb_g = GAIN_DEFAULT;
 ccdc_cfg.bayer.gain.gr_cy = GAIN_DEFAULT;
 ccdc_cfg.bayer.gain.b_mg = GAIN_DEFAULT;
 ccdc_config_gain_offset();
 regw(OUTCLIP_DEFAULT, OUTCLIP);
 regw(LSCCFG2_DEFAULT, LSCCFG2);

 if (vpss_select_ccdc_source(VPSS_CCDCIN)) {
  dev_dbg(ccdc_cfg.dev, "\ncouldn't select ccdc input source");
  return -EFAULT;
 }

 if (vpss_enable_clock(VPSS_CCDC_CLOCK, 1) < 0) {
  dev_dbg(ccdc_cfg.dev, "\ncouldn't enable ccdc clock");
  return -EFAULT;
 }
 dev_dbg(ccdc_cfg.dev, "\nEnd of ccdc_restore_defaults...");
 return 0;
}
