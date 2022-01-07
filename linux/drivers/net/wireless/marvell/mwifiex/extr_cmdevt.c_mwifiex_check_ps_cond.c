
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {scalar_t__ curr_cmd; int tx_hw_pending; scalar_t__ cmd_sent; } ;


 int CMD ;
 scalar_t__ IS_CARD_RX_RCVD (struct mwifiex_adapter*) ;
 scalar_t__ atomic_read (int *) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,char*,char*,char*,char*) ;
 int mwifiex_dnld_sleep_confirm_cmd (struct mwifiex_adapter*) ;

void
mwifiex_check_ps_cond(struct mwifiex_adapter *adapter)
{
 if (!adapter->cmd_sent && !atomic_read(&adapter->tx_hw_pending) &&
     !adapter->curr_cmd && !IS_CARD_RX_RCVD(adapter))
  mwifiex_dnld_sleep_confirm_cmd(adapter);
 else
  mwifiex_dbg(adapter, CMD,
       "cmd: Delay Sleep Confirm (%s%s%s%s)\n",
       (adapter->cmd_sent) ? "D" : "",
       atomic_read(&adapter->tx_hw_pending) ? "T" : "",
       (adapter->curr_cmd) ? "C" : "",
       (IS_CARD_RX_RCVD(adapter)) ? "R" : "");
}
