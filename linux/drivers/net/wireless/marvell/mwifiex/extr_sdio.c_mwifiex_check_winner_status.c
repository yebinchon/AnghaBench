
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sdio_mmc_card {TYPE_1__* reg; } ;
struct mwifiex_adapter {int winner; struct sdio_mmc_card* card; } ;
struct TYPE_2__ {int status_reg_0; } ;


 scalar_t__ mwifiex_read_reg (struct mwifiex_adapter*,int ,scalar_t__*) ;

__attribute__((used)) static int mwifiex_check_winner_status(struct mwifiex_adapter *adapter)
{
 int ret = 0;
 u8 winner = 0;
 struct sdio_mmc_card *card = adapter->card;

 if (mwifiex_read_reg(adapter, card->reg->status_reg_0, &winner))
  return -1;

 if (winner)
  adapter->winner = 0;
 else
  adapter->winner = 1;

 return ret;
}
