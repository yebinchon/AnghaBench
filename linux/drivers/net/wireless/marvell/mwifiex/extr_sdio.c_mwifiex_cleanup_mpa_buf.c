
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_mmc_card {int dummy; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;


 int MP_RX_AGGR_BUF_RESET (struct sdio_mmc_card*) ;
 int MP_TX_AGGR_BUF_RESET (struct sdio_mmc_card*) ;

__attribute__((used)) static void mwifiex_cleanup_mpa_buf(struct mwifiex_adapter *adapter)
{
 struct sdio_mmc_card *card = adapter->card;

 MP_TX_AGGR_BUF_RESET(card);
 MP_RX_AGGR_BUF_RESET(card);
}
