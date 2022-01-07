
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buf; int len_arr; int skb_arr; } ;
struct TYPE_3__ {int buf; } ;
struct sdio_mmc_card {TYPE_2__ mpa_rx; TYPE_1__ mpa_tx; int mp_regs; int work; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;


 int cancel_work_sync (int *) ;
 int kfree (int ) ;

__attribute__((used)) static void mwifiex_cleanup_sdio(struct mwifiex_adapter *adapter)
{
 struct sdio_mmc_card *card = adapter->card;

 cancel_work_sync(&card->work);

 kfree(card->mp_regs);
 kfree(card->mpa_rx.skb_arr);
 kfree(card->mpa_rx.len_arr);
 kfree(card->mpa_tx.buf);
 kfree(card->mpa_rx.buf);
}
