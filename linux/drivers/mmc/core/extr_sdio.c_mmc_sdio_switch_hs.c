
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int high_speed; } ;
struct mmc_card {TYPE_2__ cccr; TYPE_1__* host; } ;
struct TYPE_3__ {int caps; } ;


 int MMC_CAP_SD_HIGHSPEED ;
 int SDIO_CCCR_SPEED ;
 int SDIO_SPEED_EHS ;
 int mmc_io_rw_direct (struct mmc_card*,int,int ,int ,int ,int *) ;

__attribute__((used)) static int mmc_sdio_switch_hs(struct mmc_card *card, int enable)
{
 int ret;
 u8 speed;

 if (!(card->host->caps & MMC_CAP_SD_HIGHSPEED))
  return 0;

 if (!card->cccr.high_speed)
  return 0;

 ret = mmc_io_rw_direct(card, 0, 0, SDIO_CCCR_SPEED, 0, &speed);
 if (ret)
  return ret;

 if (enable)
  speed |= SDIO_SPEED_EHS;
 else
  speed &= ~SDIO_SPEED_EHS;

 ret = mmc_io_rw_direct(card, 1, 0, SDIO_CCCR_SPEED, speed, ((void*)0));
 if (ret)
  return ret;

 return 1;
}
