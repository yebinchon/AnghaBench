
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdio_mmc_card {int func; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;


 int sdio_claim_host (int ) ;
 int sdio_readb (int ,int ,int*) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int
mwifiex_read_reg(struct mwifiex_adapter *adapter, u32 reg, u8 *data)
{
 struct sdio_mmc_card *card = adapter->card;
 int ret = -1;
 u8 val;

 sdio_claim_host(card->func);
 val = sdio_readb(card->func, reg, &ret);
 sdio_release_host(card->func);

 *data = val;

 return ret;
}
