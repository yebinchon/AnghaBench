
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct sdio_mmc_card {int func; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;


 scalar_t__ BLOCK_MODE ;
 scalar_t__ BYTE_MODE ;
 int MWIFIEX_SDIO_BLOCK_SIZE ;
 int MWIFIEX_SDIO_BYTE_MODE_MASK ;
 int MWIFIEX_SDIO_IO_PORT_MASK ;
 int sdio_claim_host (int ) ;
 int sdio_readsb (int ,scalar_t__*,int,int) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int mwifiex_read_data_sync(struct mwifiex_adapter *adapter, u8 *buffer,
      u32 len, u32 port, u8 claim)
{
 struct sdio_mmc_card *card = adapter->card;
 int ret;
 u8 blk_mode = (port & MWIFIEX_SDIO_BYTE_MODE_MASK) ? BYTE_MODE
         : BLOCK_MODE;
 u32 blk_size = (blk_mode == BLOCK_MODE) ? MWIFIEX_SDIO_BLOCK_SIZE : 1;
 u32 blk_cnt = (blk_mode == BLOCK_MODE) ? (len / MWIFIEX_SDIO_BLOCK_SIZE)
   : len;
 u32 ioport = (port & MWIFIEX_SDIO_IO_PORT_MASK);

 if (claim)
  sdio_claim_host(card->func);

 ret = sdio_readsb(card->func, buffer, ioport, blk_cnt * blk_size);

 if (claim)
  sdio_release_host(card->func);

 return ret;
}
