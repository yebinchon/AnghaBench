
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdio_mmc_card {TYPE_1__* reg; scalar_t__ supports_sdio_new_mode; } ;
struct mwifiex_adapter {int ioport; struct sdio_mmc_card* card; } ;
struct TYPE_2__ {int sdio_int_mask; int card_misc_cfg_reg; int host_int_rsr_reg; int io_port_2_reg; int io_port_1_reg; int io_port_0_reg; } ;


 int AUTO_RE_ENABLE_INT ;
 int INFO ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int) ;
 scalar_t__ mwifiex_init_sdio_new_mode (struct mwifiex_adapter*) ;
 int mwifiex_read_reg (struct mwifiex_adapter*,int ,int*) ;
 int mwifiex_write_reg (struct mwifiex_adapter*,int ,int) ;

__attribute__((used)) static int mwifiex_init_sdio_ioport(struct mwifiex_adapter *adapter)
{
 u8 reg;
 struct sdio_mmc_card *card = adapter->card;

 adapter->ioport = 0;

 if (card->supports_sdio_new_mode) {
  if (mwifiex_init_sdio_new_mode(adapter))
   return -1;
  goto cont;
 }


 if (!mwifiex_read_reg(adapter, card->reg->io_port_0_reg, &reg))
  adapter->ioport |= (reg & 0xff);
 else
  return -1;

 if (!mwifiex_read_reg(adapter, card->reg->io_port_1_reg, &reg))
  adapter->ioport |= ((reg & 0xff) << 8);
 else
  return -1;

 if (!mwifiex_read_reg(adapter, card->reg->io_port_2_reg, &reg))
  adapter->ioport |= ((reg & 0xff) << 16);
 else
  return -1;
cont:
 mwifiex_dbg(adapter, INFO,
      "info: SDIO FUNC1 IO port: %#x\n", adapter->ioport);


 if (!mwifiex_read_reg(adapter, card->reg->host_int_rsr_reg, &reg))
  mwifiex_write_reg(adapter, card->reg->host_int_rsr_reg,
      reg | card->reg->sdio_int_mask);
 else
  return -1;


 if (!mwifiex_read_reg(adapter, card->reg->card_misc_cfg_reg, &reg))
  mwifiex_write_reg(adapter, card->reg->card_misc_cfg_reg,
      reg | AUTO_RE_ENABLE_INT);
 else
  return -1;

 return 0;
}
