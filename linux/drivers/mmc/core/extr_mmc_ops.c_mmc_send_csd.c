
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_card {int rca; int host; } ;


 int MMC_SEND_CSD ;
 scalar_t__ mmc_host_is_spi (int ) ;
 int mmc_send_cxd_native (int ,int,int *,int ) ;
 int mmc_spi_send_csd (struct mmc_card*,int *) ;

int mmc_send_csd(struct mmc_card *card, u32 *csd)
{
 if (mmc_host_is_spi(card->host))
  return mmc_spi_send_csd(card, csd);

 return mmc_send_cxd_native(card->host, card->rca << 16, csd,
    MMC_SEND_CSD);
}
