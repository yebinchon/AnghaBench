
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct htc_target {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 scalar_t__ ath9k_htc_probe_device (struct htc_target*,struct device*,int ,char*,int ) ;
 int pr_err (char*) ;

int ath9k_htc_hw_init(struct htc_target *target,
        struct device *dev, u16 devid,
        char *product, u32 drv_info)
{
 if (ath9k_htc_probe_device(target, dev, devid, product, drv_info)) {
  pr_err("Failed to initialize the device\n");
  return -ENODEV;
 }

 return 0;
}
