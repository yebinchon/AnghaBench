
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpfe_subdev_info {int sd; } ;
struct vpfe_device {size_t std_index; int ccdc; int pdev; scalar_t__ current_input; int * sd; TYPE_1__* cfg; } ;
struct TYPE_4__ {int std_id; } ;
struct TYPE_3__ {struct vpfe_subdev_info* sub_devs; } ;


 int pm_runtime_get_sync (int ) ;
 int vpfe_ccdc_restore_defaults (int *) ;
 int vpfe_clear_intr (int *,int) ;
 int vpfe_config_enable (int *,int) ;
 int vpfe_config_image_format (struct vpfe_device*,int ) ;
 TYPE_2__* vpfe_standards ;

__attribute__((used)) static int vpfe_initialize_device(struct vpfe_device *vpfe)
{
 struct vpfe_subdev_info *sdinfo;
 int ret;

 sdinfo = &vpfe->cfg->sub_devs[0];
 sdinfo->sd = vpfe->sd[0];
 vpfe->current_input = 0;
 vpfe->std_index = 0;

 ret = vpfe_config_image_format(vpfe,
           vpfe_standards[vpfe->std_index].std_id);
 if (ret)
  return ret;

 pm_runtime_get_sync(vpfe->pdev);

 vpfe_config_enable(&vpfe->ccdc, 1);

 vpfe_ccdc_restore_defaults(&vpfe->ccdc);


 vpfe_clear_intr(&vpfe->ccdc, -1);

 return ret;
}
