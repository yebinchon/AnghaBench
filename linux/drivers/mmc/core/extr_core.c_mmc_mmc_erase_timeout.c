
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int rev; unsigned int trim_timeout; int erase_group_def; unsigned int hc_erase_timeout; unsigned int sec_erase_mult; unsigned int sec_trim_mult; } ;
struct TYPE_5__ {int r2w_factor; unsigned int taac_clks; int taac_ns; } ;
struct mmc_card {TYPE_4__* host; TYPE_3__ ext_csd; TYPE_1__ csd; } ;
struct TYPE_6__ {int clock; } ;
struct TYPE_8__ {TYPE_2__ ios; } ;


 unsigned int MMC_DISCARD_ARG ;
 unsigned int MMC_SECURE_ARGS ;
 unsigned int MMC_SECURE_ERASE_ARG ;
 unsigned int MMC_TRIM_ARG ;
 scalar_t__ mmc_host_is_spi (TYPE_4__*) ;

__attribute__((used)) static unsigned int mmc_mmc_erase_timeout(struct mmc_card *card,
              unsigned int arg, unsigned int qty)
{
 unsigned int erase_timeout;

 if (arg == MMC_DISCARD_ARG ||
     (arg == MMC_TRIM_ARG && card->ext_csd.rev >= 6)) {
  erase_timeout = card->ext_csd.trim_timeout;
 } else if (card->ext_csd.erase_group_def & 1) {

  if (arg == MMC_TRIM_ARG)
   erase_timeout = card->ext_csd.trim_timeout;
  else
   erase_timeout = card->ext_csd.hc_erase_timeout;
 } else {

  unsigned int mult = (10 << card->csd.r2w_factor);
  unsigned int timeout_clks = card->csd.taac_clks * mult;
  unsigned int timeout_us;


  if (card->csd.taac_ns < 1000000)
   timeout_us = (card->csd.taac_ns * mult) / 1000;
  else
   timeout_us = (card->csd.taac_ns / 1000) * mult;





  timeout_clks <<= 1;
  timeout_us += (timeout_clks * 1000) /
         (card->host->ios.clock / 1000);

  erase_timeout = timeout_us / 1000;





  if (!erase_timeout)
   erase_timeout = 1;
 }


 if (arg & MMC_SECURE_ARGS) {
  if (arg == MMC_SECURE_ERASE_ARG)
   erase_timeout *= card->ext_csd.sec_erase_mult;
  else
   erase_timeout *= card->ext_csd.sec_trim_mult;
 }

 erase_timeout *= qty;





 if (mmc_host_is_spi(card->host) && erase_timeout < 1000)
  erase_timeout = 1000;

 return erase_timeout;
}
