
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_mmc_card {struct mwifiex_adapter* adapter; } ;
struct sdio_func {int dummy; } ;
struct mwifiex_adapter {scalar_t__ ps_state; int pps_uapsd_mode; } ;


 scalar_t__ PS_STATE_AWAKE ;
 scalar_t__ PS_STATE_SLEEP ;
 int mwifiex_interrupt_status (struct mwifiex_adapter*) ;
 int mwifiex_main_process (struct mwifiex_adapter*) ;
 int pr_err (char*,struct sdio_func*,struct sdio_mmc_card*,struct mwifiex_adapter*) ;
 struct sdio_mmc_card* sdio_get_drvdata (struct sdio_func*) ;

__attribute__((used)) static void
mwifiex_sdio_interrupt(struct sdio_func *func)
{
 struct mwifiex_adapter *adapter;
 struct sdio_mmc_card *card;

 card = sdio_get_drvdata(func);
 if (!card || !card->adapter) {
  pr_err("int: func=%p card=%p adapter=%p\n",
         func, card, card ? card->adapter : ((void*)0));
  return;
 }
 adapter = card->adapter;

 if (!adapter->pps_uapsd_mode && adapter->ps_state == PS_STATE_SLEEP)
  adapter->ps_state = PS_STATE_AWAKE;

 mwifiex_interrupt_status(adapter);
 mwifiex_main_process(adapter);
}
