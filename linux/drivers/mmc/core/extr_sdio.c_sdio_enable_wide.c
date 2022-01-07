
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int wide_bus; scalar_t__ low_speed; } ;
struct mmc_card {TYPE_2__* host; TYPE_1__ cccr; } ;
struct TYPE_4__ {int caps; } ;


 int MMC_CAP_4_BIT_DATA ;
 int SDIO_BUS_WIDTH_4BIT ;
 int SDIO_BUS_WIDTH_MASK ;
 int SDIO_BUS_WIDTH_RESERVED ;
 int SDIO_CCCR_IF ;
 int mmc_hostname (TYPE_2__*) ;
 int mmc_io_rw_direct (struct mmc_card*,int,int ,int ,int,int*) ;
 int pr_warn (char*,int ,int) ;

__attribute__((used)) static int sdio_enable_wide(struct mmc_card *card)
{
 int ret;
 u8 ctrl;

 if (!(card->host->caps & MMC_CAP_4_BIT_DATA))
  return 0;

 if (card->cccr.low_speed && !card->cccr.wide_bus)
  return 0;

 ret = mmc_io_rw_direct(card, 0, 0, SDIO_CCCR_IF, 0, &ctrl);
 if (ret)
  return ret;

 if ((ctrl & SDIO_BUS_WIDTH_MASK) == SDIO_BUS_WIDTH_RESERVED)
  pr_warn("%s: SDIO_CCCR_IF is invalid: 0x%02x\n",
   mmc_hostname(card->host), ctrl);


 ctrl &= ~SDIO_BUS_WIDTH_MASK;
 ctrl |= SDIO_BUS_WIDTH_4BIT;

 ret = mmc_io_rw_direct(card, 1, 0, SDIO_CCCR_IF, ctrl, ((void*)0));
 if (ret)
  return ret;

 return 1;
}
