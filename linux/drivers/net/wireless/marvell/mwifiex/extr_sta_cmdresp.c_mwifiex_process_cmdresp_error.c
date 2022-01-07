
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mwifiex_private {int bss_mode; struct mwifiex_adapter* adapter; } ;
struct TYPE_5__ {int status; } ;
struct mwifiex_adapter {int mwifiex_cmd_lock; TYPE_4__* curr_cmd; int ps_mode; TYPE_1__ cmd_wait_q; } ;
struct TYPE_7__ {int ps_bitmap; } ;
struct host_cmd_ds_802_11_ps_mode_enh {TYPE_3__ params; int action; } ;
struct TYPE_6__ {struct host_cmd_ds_802_11_ps_mode_enh psmode_enh; } ;
struct host_cmd_ds_command {int result; TYPE_2__ params; int command; } ;
struct TYPE_8__ {scalar_t__ wait_q_enabled; } ;


 int BITMAP_STA_PS ;
 int EN_AUTO_PS ;
 int ERROR ;





 int MSG ;
 int MWIFIEX_802_11_POWER_MODE_CAM ;
 int NL80211_IFTYPE_ADHOC ;
 int le16_to_cpu (int ) ;
 int mwifiex_cancel_scan (struct mwifiex_adapter*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_recycle_cmd_node (struct mwifiex_adapter*,TYPE_4__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
mwifiex_process_cmdresp_error(struct mwifiex_private *priv,
         struct host_cmd_ds_command *resp)
{
 struct mwifiex_adapter *adapter = priv->adapter;
 struct host_cmd_ds_802_11_ps_mode_enh *pm;

 mwifiex_dbg(adapter, ERROR,
      "CMD_RESP: cmd %#x error, result=%#x\n",
      resp->command, resp->result);

 if (adapter->curr_cmd->wait_q_enabled)
  adapter->cmd_wait_q.status = -1;

 switch (le16_to_cpu(resp->command)) {
 case 132:
  pm = &resp->params.psmode_enh;
  mwifiex_dbg(adapter, ERROR,
       "PS_MODE_ENH cmd failed: result=0x%x action=0x%X\n",
       resp->result, le16_to_cpu(pm->action));

  if (le16_to_cpu(pm->action) == EN_AUTO_PS &&
      (le16_to_cpu(pm->params.ps_bitmap) & BITMAP_STA_PS) &&
      priv->bss_mode == NL80211_IFTYPE_ADHOC)
   adapter->ps_mode = MWIFIEX_802_11_POWER_MODE_CAM;

  break;
 case 131:
 case 130:
  mwifiex_cancel_scan(adapter);
  break;

 case 129:
  break;

 case 128:
  mwifiex_dbg(adapter, MSG,
       "SDIO RX single-port aggregation Not support\n");
  break;

 default:
  break;
 }

 mwifiex_recycle_cmd_node(adapter, adapter->curr_cmd);

 spin_lock_bh(&adapter->mwifiex_cmd_lock);
 adapter->curr_cmd = ((void*)0);
 spin_unlock_bh(&adapter->mwifiex_cmd_lock);
}
