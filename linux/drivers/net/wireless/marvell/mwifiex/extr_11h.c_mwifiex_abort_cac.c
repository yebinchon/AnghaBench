
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cac_started; } ;
struct mwifiex_private {int dfs_chandef; int netdev; int dfs_cac_work; int adapter; TYPE_1__ wdev; } ;


 int ERROR ;
 int GFP_KERNEL ;
 int MSG ;
 int NL80211_RADAR_CAC_ABORTED ;
 int cancel_delayed_work_sync (int *) ;
 int cfg80211_cac_event (int ,int *,int ,int ) ;
 int mwifiex_dbg (int ,int ,char*) ;
 scalar_t__ mwifiex_stop_radar_detection (struct mwifiex_private*,int *) ;

void mwifiex_abort_cac(struct mwifiex_private *priv)
{
 if (priv->wdev.cac_started) {
  if (mwifiex_stop_radar_detection(priv, &priv->dfs_chandef))
   mwifiex_dbg(priv->adapter, ERROR,
        "failed to stop CAC in FW\n");
  mwifiex_dbg(priv->adapter, MSG,
       "Aborting delayed work for CAC.\n");
  cancel_delayed_work_sync(&priv->dfs_cac_work);
  cfg80211_cac_event(priv->netdev, &priv->dfs_chandef,
       NL80211_RADAR_CAC_ABORTED, GFP_KERNEL);
 }
}
