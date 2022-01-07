
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdio_mmc_card {TYPE_1__* reg; } ;
struct mwifiex_adapter {int ioport; struct sdio_mmc_card* card; } ;
struct TYPE_2__ {int cmd_cfg_1; int cmd_cfg_0; int card_cfg_2_1_reg; } ;


 int CMD53_NEW_MODE ;
 int CMD_PORT_AUTO_EN ;
 int CMD_PORT_RD_LEN_EN ;
 int MEM_PORT ;
 scalar_t__ mwifiex_read_reg (struct mwifiex_adapter*,int ,int*) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int) ;

__attribute__((used)) static int mwifiex_init_sdio_new_mode(struct mwifiex_adapter *adapter)
{
 u8 reg;
 struct sdio_mmc_card *card = adapter->card;

 adapter->ioport = MEM_PORT;


 if (mwifiex_read_reg(adapter, card->reg->card_cfg_2_1_reg, &reg))
  return -1;
 if (mwifiex_write_reg(adapter, card->reg->card_cfg_2_1_reg,
         reg | CMD53_NEW_MODE))
  return -1;


 if (mwifiex_read_reg(adapter, card->reg->cmd_cfg_0, &reg))
  return -1;
 if (mwifiex_write_reg(adapter, card->reg->cmd_cfg_0,
         reg | CMD_PORT_RD_LEN_EN))
  return -1;




 if (mwifiex_read_reg(adapter, card->reg->cmd_cfg_1, &reg))
  return -1;
 if (mwifiex_write_reg(adapter, card->reg->cmd_cfg_1,
         reg | CMD_PORT_AUTO_EN))
  return -1;

 return 0;
}
