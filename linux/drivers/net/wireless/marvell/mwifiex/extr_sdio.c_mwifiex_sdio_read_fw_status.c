
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sdio_mmc_card {struct mwifiex_sdio_card_reg* reg; } ;
struct mwifiex_sdio_card_reg {int status_reg_1; int status_reg_0; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;


 scalar_t__ mwifiex_read_reg (struct mwifiex_adapter*,int ,int*) ;

__attribute__((used)) static int
mwifiex_sdio_read_fw_status(struct mwifiex_adapter *adapter, u16 *dat)
{
 struct sdio_mmc_card *card = adapter->card;
 const struct mwifiex_sdio_card_reg *reg = card->reg;
 u8 fws0, fws1;

 if (mwifiex_read_reg(adapter, reg->status_reg_0, &fws0))
  return -1;

 if (mwifiex_read_reg(adapter, reg->status_reg_1, &fws1))
  return -1;

 *dat = (u16)((fws1 << 8) | fws0);
 return 0;
}
