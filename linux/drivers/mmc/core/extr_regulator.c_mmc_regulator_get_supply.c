
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* vqmmc; void* vmmc; } ;
struct mmc_host {int ocr_avail; TYPE_1__ supply; } ;
struct device {int dummy; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_dbg (struct device*,char*) ;
 int dev_warn (struct device*,char*,int) ;
 void* devm_regulator_get_optional (struct device*,char*) ;
 struct device* mmc_dev (struct mmc_host*) ;
 int mmc_regulator_get_ocrmask (void*) ;

int mmc_regulator_get_supply(struct mmc_host *mmc)
{
 struct device *dev = mmc_dev(mmc);
 int ret;

 mmc->supply.vmmc = devm_regulator_get_optional(dev, "vmmc");
 mmc->supply.vqmmc = devm_regulator_get_optional(dev, "vqmmc");

 if (IS_ERR(mmc->supply.vmmc)) {
  if (PTR_ERR(mmc->supply.vmmc) == -EPROBE_DEFER)
   return -EPROBE_DEFER;
  dev_dbg(dev, "No vmmc regulator found\n");
 } else {
  ret = mmc_regulator_get_ocrmask(mmc->supply.vmmc);
  if (ret > 0)
   mmc->ocr_avail = ret;
  else
   dev_warn(dev, "Failed getting OCR mask: %d\n", ret);
 }

 if (IS_ERR(mmc->supply.vqmmc)) {
  if (PTR_ERR(mmc->supply.vqmmc) == -EPROBE_DEFER)
   return -EPROBE_DEFER;
  dev_dbg(dev, "No vqmmc regulator found\n");
 }

 return 0;
}
