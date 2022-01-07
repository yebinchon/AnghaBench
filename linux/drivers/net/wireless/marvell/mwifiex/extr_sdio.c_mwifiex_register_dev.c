
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_mmc_card {scalar_t__ fw_dump_enh; int firmware; struct sdio_func* func; int tx_buf_size; struct mwifiex_adapter* adapter; } ;
struct sdio_func {int dummy; } ;
struct mwifiex_adapter {int num_mem_types; int mem_type_mapping_tbl; int fw_name; int tx_buf_size; struct sdio_mmc_card* card; } ;


 int ARRAY_SIZE (int ) ;
 int ERROR ;
 int MWIFIEX_SDIO_BLOCK_SIZE ;
 int generic_mem_type_map ;
 int mem_type_mapping_tbl ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_set_block_size (struct sdio_func*,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int mwifiex_register_dev(struct mwifiex_adapter *adapter)
{
 int ret;
 struct sdio_mmc_card *card = adapter->card;
 struct sdio_func *func = card->func;


 card->adapter = adapter;
 adapter->tx_buf_size = card->tx_buf_size;

 sdio_claim_host(func);


 ret = sdio_set_block_size(card->func, MWIFIEX_SDIO_BLOCK_SIZE);
 sdio_release_host(func);
 if (ret) {
  mwifiex_dbg(adapter, ERROR,
       "cannot set SDIO block size\n");
  return ret;
 }

 strcpy(adapter->fw_name, card->firmware);
 if (card->fw_dump_enh) {
  adapter->mem_type_mapping_tbl = generic_mem_type_map;
  adapter->num_mem_types = 1;
 } else {
  adapter->mem_type_mapping_tbl = mem_type_mapping_tbl;
  adapter->num_mem_types = ARRAY_SIZE(mem_type_mapping_tbl);
 }

 return 0;
}
