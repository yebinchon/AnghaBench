
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_mmc_card {int func; int * adapter; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;


 int sdio_claim_host (int ) ;
 int sdio_disable_func (int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static void
mwifiex_unregister_dev(struct mwifiex_adapter *adapter)
{
 struct sdio_mmc_card *card = adapter->card;

 if (adapter->card) {
  card->adapter = ((void*)0);
  sdio_claim_host(card->func);
  sdio_disable_func(card->func);
  sdio_release_host(card->func);
 }
}
