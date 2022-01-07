
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdio_mmc_card {int func; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;


 int mwifiex_write_reg_locked (int ,int ,int ) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;

__attribute__((used)) static int
mwifiex_write_reg(struct mwifiex_adapter *adapter, u32 reg, u8 data)
{
 struct sdio_mmc_card *card = adapter->card;
 int ret;

 sdio_claim_host(card->func);
 ret = mwifiex_write_reg_locked(card->func, reg, data);
 sdio_release_host(card->func);

 return ret;
}
