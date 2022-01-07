
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bus_width; } ;
struct mmc_host {TYPE_1__ ios; } ;
struct mmc_card {int mmc_avail_type; struct mmc_host* host; } ;


 int EXT_CSD_BUS_WIDTH_4 ;
 int EXT_CSD_BUS_WIDTH_8 ;
 int EXT_CSD_CARD_TYPE_DDR_52 ;
 int EXT_CSD_DDR_BUS_WIDTH_4 ;
 int EXT_CSD_DDR_BUS_WIDTH_8 ;
 int MMC_BUS_WIDTH_1 ;
 int MMC_BUS_WIDTH_8 ;
 int __mmc_select_powerclass (struct mmc_card*,int) ;
 int mmc_can_ext_csd (struct mmc_card*) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_warn (char*,int ,int,int) ;

__attribute__((used)) static int mmc_select_powerclass(struct mmc_card *card)
{
 struct mmc_host *host = card->host;
 u32 bus_width, ext_csd_bits;
 int err, ddr;


 if (!mmc_can_ext_csd(card))
  return 0;

 bus_width = host->ios.bus_width;

 if (bus_width == MMC_BUS_WIDTH_1)
  return 0;

 ddr = card->mmc_avail_type & EXT_CSD_CARD_TYPE_DDR_52;
 if (ddr)
  ext_csd_bits = (bus_width == MMC_BUS_WIDTH_8) ?
   EXT_CSD_DDR_BUS_WIDTH_8 : EXT_CSD_DDR_BUS_WIDTH_4;
 else
  ext_csd_bits = (bus_width == MMC_BUS_WIDTH_8) ?
   EXT_CSD_BUS_WIDTH_8 : EXT_CSD_BUS_WIDTH_4;

 err = __mmc_select_powerclass(card, ext_csd_bits);
 if (err)
  pr_warn("%s: power class selection to bus width %d ddr %d failed\n",
   mmc_hostname(host), 1 << bus_width, ddr);

 return err;
}
