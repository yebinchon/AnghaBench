
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sda_spec3; } ;
struct mmc_card {TYPE_3__* host; TYPE_1__ scr; } ;
struct TYPE_5__ {scalar_t__ timing; } ;
struct TYPE_6__ {TYPE_2__ ios; } ;


 scalar_t__ MMC_TIMING_UHS_SDR104 ;
 scalar_t__ MMC_TIMING_UHS_SDR50 ;
 int mmc_execute_tuning (struct mmc_card*) ;
 int mmc_host_is_spi (TYPE_3__*) ;
 int sdio_enable_4bit_bus (struct mmc_card*) ;
 int sdio_select_driver_type (struct mmc_card*) ;
 int sdio_set_bus_speed_mode (struct mmc_card*) ;

__attribute__((used)) static int mmc_sdio_init_uhs_card(struct mmc_card *card)
{
 int err;

 if (!card->scr.sda_spec3)
  return 0;


 err = sdio_enable_4bit_bus(card);
 if (err)
  goto out;


 sdio_select_driver_type(card);


 err = sdio_set_bus_speed_mode(card);
 if (err)
  goto out;





 if (!mmc_host_is_spi(card->host) &&
     ((card->host->ios.timing == MMC_TIMING_UHS_SDR50) ||
       (card->host->ios.timing == MMC_TIMING_UHS_SDR104)))
  err = mmc_execute_tuning(card);
out:
 return err;
}
