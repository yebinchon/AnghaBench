
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ if_type; } ;


 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_1__ isif_cfg ;
 int isif_config_raw () ;
 int isif_config_ycbcr () ;

__attribute__((used)) static int isif_configure(void)
{
 if (isif_cfg.if_type == VPFE_RAW_BAYER)
  return isif_config_raw();
 return isif_config_ycbcr();
}
