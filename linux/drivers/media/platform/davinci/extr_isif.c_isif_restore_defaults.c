
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum vpss_ccdc_source_sel { ____Placeholder_vpss_ccdc_source_sel } vpss_ccdc_source_sel ;
struct TYPE_3__ {int config_params; } ;
struct TYPE_4__ {int dev; TYPE_1__ bayer; } ;


 int VPSS_BL_CLOCK ;
 int VPSS_CCDCIN ;
 int VPSS_CCDC_CLOCK ;
 int VPSS_IPIPEIF_CLOCK ;
 int dev_dbg (int ,char*) ;
 TYPE_2__ isif_cfg ;
 int isif_config_defaults ;
 int isif_config_gain_offset () ;
 int vpss_enable_clock (int ,int) ;
 int vpss_select_ccdc_source (int) ;

__attribute__((used)) static void isif_restore_defaults(void)
{
 enum vpss_ccdc_source_sel source = VPSS_CCDCIN;

 dev_dbg(isif_cfg.dev, "\nstarting isif_restore_defaults...");
 isif_cfg.bayer.config_params = isif_config_defaults;

 vpss_enable_clock(VPSS_CCDC_CLOCK, 1);
 vpss_enable_clock(VPSS_IPIPEIF_CLOCK, 1);
 vpss_enable_clock(VPSS_BL_CLOCK, 1);

 isif_config_gain_offset();
 vpss_select_ccdc_source(source);
 dev_dbg(isif_cfg.dev, "\nEnd of isif_restore_defaults...");
}
