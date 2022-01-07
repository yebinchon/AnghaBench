
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ if_type; } ;


 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_1__ ccdc_cfg ;
 int ccdc_config_raw () ;
 int ccdc_config_ycbcr () ;

__attribute__((used)) static int ccdc_configure(void)
{
 if (ccdc_cfg.if_type == VPFE_RAW_BAYER)
  ccdc_config_raw();
 else
  ccdc_config_ycbcr();
 return 0;
}
