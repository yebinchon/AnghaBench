
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ if_type; } ;


 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_1__ ccdc_cfg ;
 int ccdc_enable_vport (int) ;
 int ccdc_restore_defaults () ;

__attribute__((used)) static int ccdc_open(struct device *device)
{
 ccdc_restore_defaults();
 if (ccdc_cfg.if_type == VPFE_RAW_BAYER)
  ccdc_enable_vport(1);
 return 0;
}
