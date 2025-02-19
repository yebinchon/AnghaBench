
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_8__ {TYPE_3__* chan; } ;
struct mwifiex_private {TYPE_4__ dfs_chandef; int netdev; int dfs_cac_work; int adapter; } ;
struct mwifiex_ie_types_header {int dummy; } ;
struct TYPE_6__ {int radar; } ;
struct TYPE_5__ {int type; int len; } ;
struct mwifiex_ie_types_chan_rpt_data {TYPE_2__ map; TYPE_1__ header; } ;
struct host_cmd_ds_chan_rpt_event {int tlvbuf; int result; } ;
struct TYPE_7__ {int hw_value; } ;


 int ERROR ;
 int GFP_KERNEL ;
 scalar_t__ HostCmd_RESULT_OK ;
 int MSG ;
 int NL80211_RADAR_DETECTED ;

 int cancel_delayed_work_sync (int *) ;
 int cfg80211_cac_event (int ,TYPE_4__*,int ,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mwifiex_dbg (int ,int ,char*,...) ;

int mwifiex_11h_handle_chanrpt_ready(struct mwifiex_private *priv,
         struct sk_buff *skb)
{
 struct host_cmd_ds_chan_rpt_event *rpt_event;
 struct mwifiex_ie_types_chan_rpt_data *rpt;
 u8 *evt_buf;
 u16 event_len, tlv_len;

 rpt_event = (void *)(skb->data + sizeof(u32));
 event_len = skb->len - (sizeof(struct host_cmd_ds_chan_rpt_event)+
    sizeof(u32));

 if (le32_to_cpu(rpt_event->result) != HostCmd_RESULT_OK) {
  mwifiex_dbg(priv->adapter, ERROR,
       "Error in channel report event\n");
  return -1;
 }

 evt_buf = (void *)&rpt_event->tlvbuf;

 while (event_len >= sizeof(struct mwifiex_ie_types_header)) {
  rpt = (void *)&rpt_event->tlvbuf;
  tlv_len = le16_to_cpu(rpt->header.len);

  switch (le16_to_cpu(rpt->header.type)) {
  case 128:
   if (rpt->map.radar) {
    mwifiex_dbg(priv->adapter, MSG,
         "RADAR Detected on channel %d!\n",
         priv->dfs_chandef.chan->hw_value);
    cancel_delayed_work_sync(&priv->dfs_cac_work);
    cfg80211_cac_event(priv->netdev,
         &priv->dfs_chandef,
         NL80211_RADAR_DETECTED,
         GFP_KERNEL);
   }
   break;
  default:
   break;
  }

  evt_buf += (tlv_len + sizeof(rpt->header));
  event_len -= (tlv_len + sizeof(rpt->header));
 }

 return 0;
}
