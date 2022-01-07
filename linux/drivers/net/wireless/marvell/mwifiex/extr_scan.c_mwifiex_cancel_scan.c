
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int scan_aborting; int * scan_request; } ;
struct mwifiex_adapter {int scan_processing; int priv_num; struct mwifiex_private** priv; int mwifiex_cmd_lock; } ;
struct cfg80211_scan_info {int aborted; } ;


 int INFO ;
 int cfg80211_scan_done (int *,struct cfg80211_scan_info*) ;
 int mwifiex_cancel_pending_scan_cmd (struct mwifiex_adapter*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mwifiex_cancel_scan(struct mwifiex_adapter *adapter)
{
 struct mwifiex_private *priv;
 int i;

 mwifiex_cancel_pending_scan_cmd(adapter);

 if (adapter->scan_processing) {
  spin_lock_bh(&adapter->mwifiex_cmd_lock);
  adapter->scan_processing = 0;
  spin_unlock_bh(&adapter->mwifiex_cmd_lock);
  for (i = 0; i < adapter->priv_num; i++) {
   priv = adapter->priv[i];
   if (!priv)
    continue;
   if (priv->scan_request) {
    struct cfg80211_scan_info info = {
     .aborted = 1,
    };

    mwifiex_dbg(adapter, INFO,
         "info: aborting scan\n");
    cfg80211_scan_done(priv->scan_request, &info);
    priv->scan_request = ((void*)0);
    priv->scan_aborting = 0;
   }
  }
 }
}
