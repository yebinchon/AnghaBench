
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct mwifiex_radar_det_event {int det_type; int reg_domain; } ;
struct mwifiex_private {TYPE_1__* adapter; int dfs_chandef; } ;
struct TYPE_2__ {int wiphy; } ;


 int ERROR ;
 int GFP_KERNEL ;
 int MSG ;
 int cfg80211_radar_event (int ,int *,int ) ;
 int mwifiex_dbg (TYPE_1__*,int ,char*,...) ;
 scalar_t__ mwifiex_stop_radar_detection (struct mwifiex_private*,int *) ;

int mwifiex_11h_handle_radar_detected(struct mwifiex_private *priv,
          struct sk_buff *skb)
{
 struct mwifiex_radar_det_event *rdr_event;

 rdr_event = (void *)(skb->data + sizeof(u32));

 mwifiex_dbg(priv->adapter, MSG,
      "radar detected; indicating kernel\n");
 if (mwifiex_stop_radar_detection(priv, &priv->dfs_chandef))
  mwifiex_dbg(priv->adapter, ERROR,
       "Failed to stop CAC in FW\n");
 cfg80211_radar_event(priv->adapter->wiphy, &priv->dfs_chandef,
        GFP_KERNEL);
 mwifiex_dbg(priv->adapter, MSG, "regdomain: %d\n",
      rdr_event->reg_domain);
 mwifiex_dbg(priv->adapter, MSG, "radar detection type: %d\n",
      rdr_event->det_type);

 return 0;
}
