
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wmi_reconnect_cmd {int bssid; int channel; } ;
struct wmi {int traffic_class; } ;
struct sk_buff {scalar_t__ data; } ;


 int ATH6KL_DBG_WMI ;
 int ENOMEM ;
 int ETH_ALEN ;
 int NO_SYNC_WMIFLAG ;
 int WMI_RECONNECT_CMDID ;
 int ath6kl_dbg (int ,char*,int *,int ) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int cpu_to_le16 (int ) ;
 int memcpy (int ,int *,int ) ;

int ath6kl_wmi_reconnect_cmd(struct wmi *wmi, u8 if_idx, u8 *bssid,
        u16 channel)
{
 struct sk_buff *skb;
 struct wmi_reconnect_cmd *cc;
 int ret;

 ath6kl_dbg(ATH6KL_DBG_WMI, "wmi reconnect bssid %pM freq %d\n",
     bssid, channel);

 wmi->traffic_class = 100;

 skb = ath6kl_wmi_get_new_buf(sizeof(struct wmi_reconnect_cmd));
 if (!skb)
  return -ENOMEM;

 cc = (struct wmi_reconnect_cmd *) skb->data;
 cc->channel = cpu_to_le16(channel);

 if (bssid != ((void*)0))
  memcpy(cc->bssid, bssid, ETH_ALEN);

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_RECONNECT_CMDID,
      NO_SYNC_WMIFLAG);

 return ret;
}
