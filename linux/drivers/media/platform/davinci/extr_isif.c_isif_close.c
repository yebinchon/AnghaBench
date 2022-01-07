
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {int config_params; } ;
struct TYPE_4__ {TYPE_1__ bayer; } ;


 TYPE_2__ isif_cfg ;
 int isif_config_defaults ;

__attribute__((used)) static int isif_close(struct device *device)
{

 isif_cfg.bayer.config_params = isif_config_defaults;
 return 0;
}
