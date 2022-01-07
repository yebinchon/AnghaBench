
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpfe_ccdc_config_params_raw {int dummy; } ;
struct TYPE_3__ {struct vpfe_ccdc_config_params_raw config_params; } ;
struct TYPE_4__ {TYPE_1__ bayer; } ;
struct vpfe_ccdc {TYPE_2__ ccdc_cfg; } ;



__attribute__((used)) static void
vpfe_ccdc_update_raw_params(struct vpfe_ccdc *ccdc,
       struct vpfe_ccdc_config_params_raw *raw_params)
{
 struct vpfe_ccdc_config_params_raw *config_params =
    &ccdc->ccdc_cfg.bayer.config_params;

 *config_params = *raw_params;
}
