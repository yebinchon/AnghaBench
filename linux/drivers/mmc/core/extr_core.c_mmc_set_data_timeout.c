
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mmc_data {int timeout_ns; unsigned int timeout_clks; int flags; } ;
struct TYPE_4__ {unsigned int r2w_factor; unsigned int taac_ns; unsigned int taac_clks; } ;
struct mmc_card {TYPE_3__* host; TYPE_1__ csd; } ;
struct TYPE_5__ {int clock; } ;
struct TYPE_6__ {TYPE_2__ ios; } ;


 int MMC_DATA_READ ;
 int MMC_DATA_WRITE ;
 scalar_t__ mmc_card_long_read_time (struct mmc_card const*) ;
 scalar_t__ mmc_card_sd (struct mmc_card const*) ;
 scalar_t__ mmc_card_sdio (struct mmc_card const*) ;
 scalar_t__ mmc_host_is_spi (TYPE_3__*) ;

void mmc_set_data_timeout(struct mmc_data *data, const struct mmc_card *card)
{
 unsigned int mult;




 if (mmc_card_sdio(card)) {
  data->timeout_ns = 1000000000;
  data->timeout_clks = 0;
  return;
 }




 mult = mmc_card_sd(card) ? 100 : 10;





 if (data->flags & MMC_DATA_WRITE)
  mult <<= card->csd.r2w_factor;

 data->timeout_ns = card->csd.taac_ns * mult;
 data->timeout_clks = card->csd.taac_clks * mult;




 if (mmc_card_sd(card)) {
  unsigned int timeout_us, limit_us;

  timeout_us = data->timeout_ns / 1000;
  if (card->host->ios.clock)
   timeout_us += data->timeout_clks * 1000 /
    (card->host->ios.clock / 1000);

  if (data->flags & MMC_DATA_WRITE)
   limit_us = 3000000;
  else
   limit_us = 100000;




  if (timeout_us > limit_us) {
   data->timeout_ns = limit_us * 1000;
   data->timeout_clks = 0;
  }


  if (timeout_us == 0)
   data->timeout_ns = limit_us * 1000;
 }







 if (mmc_card_long_read_time(card) && data->flags & MMC_DATA_READ) {
  data->timeout_ns = 600000000;
  data->timeout_clks = 0;
 }







 if (mmc_host_is_spi(card->host)) {
  if (data->flags & MMC_DATA_WRITE) {
   if (data->timeout_ns < 1000000000)
    data->timeout_ns = 1000000000;
  } else {
   if (data->timeout_ns < 100000000)
    data->timeout_ns = 100000000;
  }
 }
}
