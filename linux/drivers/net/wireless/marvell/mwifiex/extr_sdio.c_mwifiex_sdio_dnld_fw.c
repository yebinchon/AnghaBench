
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_mmc_card {int func; } ;
struct mwifiex_fw_image {int dummy; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;


 int mwifiex_dnld_fw (struct mwifiex_adapter*,struct mwifiex_fw_image*) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int mwifiex_sdio_dnld_fw(struct mwifiex_adapter *adapter,
   struct mwifiex_fw_image *fw)
{
 struct sdio_mmc_card *card = adapter->card;
 int ret;

 sdio_claim_host(card->func);
 ret = mwifiex_dnld_fw(adapter, fw);
 sdio_release_host(card->func);

 return ret;
}
