
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* wiphy; } ;
struct mwifiex_private {TYPE_2__ wdev; scalar_t__ sched_scanning; } ;
struct mwifiex_ds_hs_cfg {int is_invoke_hostcmd; } ;
struct mwifiex_adapter {int priv_num; int hs_activate_wait_q_woken; int hs_activate_wait_q; int work_flags; scalar_t__ hs_activated; struct mwifiex_private** priv; } ;
typedef int hscfg ;
struct TYPE_6__ {TYPE_1__* wowlan_config; } ;
struct TYPE_4__ {int nd_config; } ;


 int CMD ;
 int ERROR ;
 int HZ ;
 int HostCmd_ACT_GEN_SET ;
 int MWIFIEX_BSS_ROLE_STA ;
 int MWIFIEX_IS_HS_ENABLING ;
 int MWIFIEX_SYNC_CMD ;
 int cfg80211_sched_scan_stopped (TYPE_3__*,int ) ;
 scalar_t__ disconnect_on_suspend ;
 int memset (struct mwifiex_ds_hs_cfg*,int ,int) ;
 int mwifiex_cancel_all_pending_cmd (struct mwifiex_adapter*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_deauthenticate (struct mwifiex_private*,int *) ;
 struct mwifiex_private* mwifiex_get_priv (struct mwifiex_adapter*,int ) ;
 scalar_t__ mwifiex_set_hs_params (struct mwifiex_private*,int ,int ,struct mwifiex_ds_hs_cfg*) ;
 int mwifiex_stop_bg_scan (struct mwifiex_private*) ;
 int set_bit (int ,int *) ;
 scalar_t__ wait_event_interruptible_timeout (int ,int,int) ;

int mwifiex_enable_hs(struct mwifiex_adapter *adapter)
{
 struct mwifiex_ds_hs_cfg hscfg;
 struct mwifiex_private *priv;
 int i;

 if (disconnect_on_suspend) {
  for (i = 0; i < adapter->priv_num; i++) {
   priv = adapter->priv[i];
   if (priv)
    mwifiex_deauthenticate(priv, ((void*)0));
  }
 }

 priv = mwifiex_get_priv(adapter, MWIFIEX_BSS_ROLE_STA);

 if (priv && priv->sched_scanning) {




   mwifiex_dbg(adapter, CMD, "aborting bgscan!\n");
   mwifiex_stop_bg_scan(priv);
   cfg80211_sched_scan_stopped(priv->wdev.wiphy, 0);



 }

 if (adapter->hs_activated) {
  mwifiex_dbg(adapter, CMD,
       "cmd: HS Already activated\n");
  return 1;
 }

 adapter->hs_activate_wait_q_woken = 0;

 memset(&hscfg, 0, sizeof(hscfg));
 hscfg.is_invoke_hostcmd = 1;

 set_bit(MWIFIEX_IS_HS_ENABLING, &adapter->work_flags);
 mwifiex_cancel_all_pending_cmd(adapter);

 if (mwifiex_set_hs_params(mwifiex_get_priv(adapter,
         MWIFIEX_BSS_ROLE_STA),
      HostCmd_ACT_GEN_SET, MWIFIEX_SYNC_CMD,
      &hscfg)) {
  mwifiex_dbg(adapter, ERROR,
       "IOCTL request HS enable failed\n");
  return 0;
 }

 if (wait_event_interruptible_timeout(adapter->hs_activate_wait_q,
          adapter->hs_activate_wait_q_woken,
          (10 * HZ)) <= 0) {
  mwifiex_dbg(adapter, ERROR,
       "hs_activate_wait_q terminated\n");
  return 0;
 }

 return 1;
}
