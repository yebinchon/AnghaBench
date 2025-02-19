
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sd3_bus_mode; int uhs_max_dtr; } ;
struct mmc_card {TYPE_2__* host; TYPE_1__ sw_caps; int quirk_max_rate; int sd_bus_speed; } ;
struct TYPE_6__ {int caps; } ;


 int MMC_CAP_UHS_DDR50 ;
 int MMC_CAP_UHS_SDR104 ;
 int MMC_CAP_UHS_SDR12 ;
 int MMC_CAP_UHS_SDR25 ;
 int MMC_CAP_UHS_SDR50 ;
 unsigned int MMC_TIMING_UHS_DDR50 ;
 unsigned int MMC_TIMING_UHS_SDR104 ;
 unsigned int MMC_TIMING_UHS_SDR12 ;
 unsigned int MMC_TIMING_UHS_SDR25 ;
 unsigned int MMC_TIMING_UHS_SDR50 ;
 int SDIO_CCCR_SPEED ;
 unsigned char SDIO_SPEED_BSS_MASK ;
 unsigned int SDIO_SPEED_DDR50 ;
 unsigned int SDIO_SPEED_SDR104 ;
 unsigned int SDIO_SPEED_SDR12 ;
 unsigned int SDIO_SPEED_SDR25 ;
 unsigned int SDIO_SPEED_SDR50 ;
 int SD_MODE_UHS_DDR50 ;
 int SD_MODE_UHS_SDR104 ;
 int SD_MODE_UHS_SDR12 ;
 int SD_MODE_UHS_SDR25 ;
 int SD_MODE_UHS_SDR50 ;
 int UHS_DDR50_BUS_SPEED ;
 int UHS_DDR50_MAX_DTR ;
 int UHS_SDR104_BUS_SPEED ;
 int UHS_SDR104_MAX_DTR ;
 int UHS_SDR12_BUS_SPEED ;
 int UHS_SDR12_MAX_DTR ;
 int UHS_SDR25_BUS_SPEED ;
 int UHS_SDR25_MAX_DTR ;
 int UHS_SDR50_BUS_SPEED ;
 int UHS_SDR50_MAX_DTR ;
 unsigned int min_not_zero (int ,int ) ;
 int mmc_host_uhs (TYPE_2__*) ;
 int mmc_io_rw_direct (struct mmc_card*,int,int ,int ,unsigned char,unsigned char*) ;
 int mmc_set_clock (TYPE_2__*,unsigned int) ;
 int mmc_set_timing (TYPE_2__*,unsigned int) ;

__attribute__((used)) static int sdio_set_bus_speed_mode(struct mmc_card *card)
{
 unsigned int bus_speed, timing;
 int err;
 unsigned char speed;
 unsigned int max_rate;





 if (!mmc_host_uhs(card->host))
  return 0;

 bus_speed = SDIO_SPEED_SDR12;
 timing = MMC_TIMING_UHS_SDR12;
 if ((card->host->caps & MMC_CAP_UHS_SDR104) &&
     (card->sw_caps.sd3_bus_mode & SD_MODE_UHS_SDR104)) {
   bus_speed = SDIO_SPEED_SDR104;
   timing = MMC_TIMING_UHS_SDR104;
   card->sw_caps.uhs_max_dtr = UHS_SDR104_MAX_DTR;
   card->sd_bus_speed = UHS_SDR104_BUS_SPEED;
 } else if ((card->host->caps & MMC_CAP_UHS_DDR50) &&
     (card->sw_caps.sd3_bus_mode & SD_MODE_UHS_DDR50)) {
   bus_speed = SDIO_SPEED_DDR50;
   timing = MMC_TIMING_UHS_DDR50;
   card->sw_caps.uhs_max_dtr = UHS_DDR50_MAX_DTR;
   card->sd_bus_speed = UHS_DDR50_BUS_SPEED;
 } else if ((card->host->caps & (MMC_CAP_UHS_SDR104 |
      MMC_CAP_UHS_SDR50)) && (card->sw_caps.sd3_bus_mode &
      SD_MODE_UHS_SDR50)) {
   bus_speed = SDIO_SPEED_SDR50;
   timing = MMC_TIMING_UHS_SDR50;
   card->sw_caps.uhs_max_dtr = UHS_SDR50_MAX_DTR;
   card->sd_bus_speed = UHS_SDR50_BUS_SPEED;
 } else if ((card->host->caps & (MMC_CAP_UHS_SDR104 |
      MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR25)) &&
     (card->sw_caps.sd3_bus_mode & SD_MODE_UHS_SDR25)) {
   bus_speed = SDIO_SPEED_SDR25;
   timing = MMC_TIMING_UHS_SDR25;
   card->sw_caps.uhs_max_dtr = UHS_SDR25_MAX_DTR;
   card->sd_bus_speed = UHS_SDR25_BUS_SPEED;
 } else if ((card->host->caps & (MMC_CAP_UHS_SDR104 |
      MMC_CAP_UHS_SDR50 | MMC_CAP_UHS_SDR25 |
      MMC_CAP_UHS_SDR12)) && (card->sw_caps.sd3_bus_mode &
      SD_MODE_UHS_SDR12)) {
   bus_speed = SDIO_SPEED_SDR12;
   timing = MMC_TIMING_UHS_SDR12;
   card->sw_caps.uhs_max_dtr = UHS_SDR12_MAX_DTR;
   card->sd_bus_speed = UHS_SDR12_BUS_SPEED;
 }

 err = mmc_io_rw_direct(card, 0, 0, SDIO_CCCR_SPEED, 0, &speed);
 if (err)
  return err;

 speed &= ~SDIO_SPEED_BSS_MASK;
 speed |= bus_speed;
 err = mmc_io_rw_direct(card, 1, 0, SDIO_CCCR_SPEED, speed, ((void*)0));
 if (err)
  return err;

 max_rate = min_not_zero(card->quirk_max_rate,
    card->sw_caps.uhs_max_dtr);

 if (bus_speed) {
  mmc_set_timing(card->host, timing);
  mmc_set_clock(card->host, max_rate);
 }

 return 0;
}
