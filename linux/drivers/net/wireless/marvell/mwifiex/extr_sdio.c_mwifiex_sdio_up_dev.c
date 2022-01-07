
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdio_mmc_card {TYPE_1__* reg; int tx_buf_size; int func; } ;
struct mwifiex_adapter {int tx_buf_size; struct sdio_mmc_card* card; } ;
struct TYPE_2__ {int host_int_status_reg; } ;


 int MWIFIEX_SDIO_BLOCK_SIZE ;
 int mwifiex_init_sdio_ioport (struct mwifiex_adapter*) ;
 int mwifiex_read_reg (struct mwifiex_adapter*,int ,int *) ;
 int sdio_claim_host (int ) ;
 int sdio_enable_func (int ) ;
 int sdio_release_host (int ) ;
 int sdio_set_block_size (int ,int ) ;

__attribute__((used)) static void mwifiex_sdio_up_dev(struct mwifiex_adapter *adapter)
{
 struct sdio_mmc_card *card = adapter->card;
 u8 sdio_ireg;

 sdio_claim_host(card->func);
 sdio_enable_func(card->func);
 sdio_set_block_size(card->func, MWIFIEX_SDIO_BLOCK_SIZE);
 sdio_release_host(card->func);




 adapter->tx_buf_size = card->tx_buf_size;





 mwifiex_read_reg(adapter, card->reg->host_int_status_reg, &sdio_ireg);

 mwifiex_init_sdio_ioport(adapter);
}
