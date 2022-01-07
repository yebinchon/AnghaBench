
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_pf {int hwmon_dev; TYPE_2__* pdev; int cpp; TYPE_1__* nspi; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int sensor_mask; } ;


 int CONFIG_HWMON ;
 int IS_REACHABLE (int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int hwmon_device_register_with_info (int *,char*,struct nfp_pf*,int *,int *) ;
 int nfp_chip_info ;
 int nfp_info (int ,char*) ;
 int nfp_warn (int ,char*) ;

int nfp_hwmon_register(struct nfp_pf *pf)
{
 if (!IS_REACHABLE(CONFIG_HWMON))
  return 0;

 if (!pf->nspi) {
  nfp_warn(pf->cpp, "not registering HWMON (no NSP info)\n");
  return 0;
 }
 if (!pf->nspi->sensor_mask) {
  nfp_info(pf->cpp,
    "not registering HWMON (NSP doesn't report sensors)\n");
  return 0;
 }

 pf->hwmon_dev = hwmon_device_register_with_info(&pf->pdev->dev, "nfp",
       pf, &nfp_chip_info,
       ((void*)0));
 return PTR_ERR_OR_ZERO(pf->hwmon_dev);
}
