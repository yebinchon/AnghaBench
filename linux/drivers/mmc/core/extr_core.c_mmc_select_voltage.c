
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vdd; } ;
struct mmc_host {int ocr_avail; int caps2; TYPE_1__ ios; } ;


 int MMC_CAP2_FULL_PWR_CYCLE ;
 int dev_warn (int ,char*) ;
 int ffs (int) ;
 int fls (int) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_power_cycle (struct mmc_host*,int) ;

u32 mmc_select_voltage(struct mmc_host *host, u32 ocr)
{
 int bit;





 if (ocr & 0x7F) {
  dev_warn(mmc_dev(host),
  "card claims to support voltages below defined range\n");
  ocr &= ~0x7F;
 }

 ocr &= host->ocr_avail;
 if (!ocr) {
  dev_warn(mmc_dev(host), "no support for card's volts\n");
  return 0;
 }

 if (host->caps2 & MMC_CAP2_FULL_PWR_CYCLE) {
  bit = ffs(ocr) - 1;
  ocr &= 3 << bit;
  mmc_power_cycle(host, ocr);
 } else {
  bit = fls(ocr) - 1;
  ocr &= 3 << bit;
  if (bit != host->ios.vdd)
   dev_warn(mmc_dev(host), "exceeding card's volts\n");
 }

 return ocr;
}
