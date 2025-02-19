
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bus_widths; } ;
struct mmc_card {scalar_t__ type; TYPE_2__* host; TYPE_1__ scr; } ;
struct TYPE_4__ {int caps; } ;


 int MMC_BUS_WIDTH_1 ;
 int MMC_BUS_WIDTH_4 ;
 int MMC_CAP_4_BIT_DATA ;
 scalar_t__ MMC_TYPE_SDIO ;
 int SD_SCR_BUS_WIDTH_4 ;
 int mmc_app_set_bus_width (struct mmc_card*,int ) ;
 int mmc_set_bus_width (TYPE_2__*,int ) ;
 int sdio_enable_wide (struct mmc_card*) ;

__attribute__((used)) static int sdio_enable_4bit_bus(struct mmc_card *card)
{
 int err;

 if (card->type == MMC_TYPE_SDIO)
  err = sdio_enable_wide(card);
 else if ((card->host->caps & MMC_CAP_4_BIT_DATA) &&
   (card->scr.bus_widths & SD_SCR_BUS_WIDTH_4)) {
  err = mmc_app_set_bus_width(card, MMC_BUS_WIDTH_4);
  if (err)
   return err;
  err = sdio_enable_wide(card);
  if (err <= 0)
   mmc_app_set_bus_width(card, MMC_BUS_WIDTH_1);
 } else
  return 0;

 if (err > 0) {
  mmc_set_bus_width(card->host, MMC_BUS_WIDTH_4);
  err = 0;
 }

 return err;
}
