
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mwifiex_private {int scan_request; struct mwifiex_adapter* adapter; } ;
struct TYPE_3__ {scalar_t__ status; } ;
struct mwifiex_adapter {TYPE_2__* curr_cmd; TYPE_1__ cmd_wait_q; scalar_t__ survey_idx; } ;
struct TYPE_4__ {scalar_t__ wait_q_enabled; } ;


 int INFO ;
 int mwifiex_complete_cmd (struct mwifiex_adapter*,TYPE_2__*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;

__attribute__((used)) static void mwifiex_complete_scan(struct mwifiex_private *priv)
{
 struct mwifiex_adapter *adapter = priv->adapter;

 adapter->survey_idx = 0;
 if (adapter->curr_cmd->wait_q_enabled) {
  adapter->cmd_wait_q.status = 0;
  if (!priv->scan_request) {
   mwifiex_dbg(adapter, INFO,
        "complete internal scan\n");
   mwifiex_complete_cmd(adapter, adapter->curr_cmd);
  }
 }
}
