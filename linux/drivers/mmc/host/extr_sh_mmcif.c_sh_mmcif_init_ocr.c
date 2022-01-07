
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mmcif_plat_data {scalar_t__ ocr; } ;
struct sh_mmcif_host {struct mmc_host* mmc; } ;
struct mmc_host {scalar_t__ ocr_avail; } ;
struct device {struct sh_mmcif_plat_data* platform_data; } ;


 int dev_warn (int ,char*) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_regulator_get_supply (struct mmc_host*) ;
 struct device* sh_mmcif_host_to_dev (struct sh_mmcif_host*) ;

__attribute__((used)) static void sh_mmcif_init_ocr(struct sh_mmcif_host *host)
{
 struct device *dev = sh_mmcif_host_to_dev(host);
 struct sh_mmcif_plat_data *pd = dev->platform_data;
 struct mmc_host *mmc = host->mmc;

 mmc_regulator_get_supply(mmc);

 if (!pd)
  return;

 if (!mmc->ocr_avail)
  mmc->ocr_avail = pd->ocr;
 else if (pd->ocr)
  dev_warn(mmc_dev(mmc), "Platform OCR mask is ignored\n");
}
