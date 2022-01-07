
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int hwmon_dev; } ;


 int CONFIG_HWMON ;
 int IS_REACHABLE (int ) ;
 int hwmon_device_unregister (int ) ;

void nfp_hwmon_unregister(struct nfp_pf *pf)
{
 if (!IS_REACHABLE(CONFIG_HWMON) || !pf->hwmon_dev)
  return;

 hwmon_device_unregister(pf->hwmon_dev);
}
