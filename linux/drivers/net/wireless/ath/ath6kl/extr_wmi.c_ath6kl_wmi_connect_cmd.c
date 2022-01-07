
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct wmi_connect_cmd {int ssid_len; int nw_type; int dot11_auth_mode; int auth_mode; int prwise_crypto_type; int grp_crypto_type; int bssid; void* nw_subtype; int ctrl_flags; int ch; void* grp_crypto_len; void* prwise_crypto_len; int ssid; } ;
struct wmi {int traffic_class; } ;
struct sk_buff {scalar_t__ data; } ;
typedef enum network_type { ____Placeholder_network_type } network_type ;
typedef enum dot11_auth_mode { ____Placeholder_dot11_auth_mode } dot11_auth_mode ;
typedef enum auth_mode { ____Placeholder_auth_mode } auth_mode ;
typedef enum ath6kl_crypto_type { ____Placeholder_ath6kl_crypto_type } ath6kl_crypto_type ;


 int ATH6KL_DBG_WMI ;
 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int NONE_CRYPT ;
 int NO_SYNC_WMIFLAG ;
 int WMI_CONNECT_CMDID ;
 int ath6kl_dbg (int ,char*,void**,int ,int ,int,int,int,int,int,int) ;
 int ath6kl_dbg_dump (int ,int *,char*,void**,int) ;
 int ath6kl_wmi_cmd_send (struct wmi*,void*,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int memcpy (int ,void**,int) ;

int ath6kl_wmi_connect_cmd(struct wmi *wmi, u8 if_idx,
      enum network_type nw_type,
      enum dot11_auth_mode dot11_auth_mode,
      enum auth_mode auth_mode,
      enum ath6kl_crypto_type pairwise_crypto,
      u8 pairwise_crypto_len,
      enum ath6kl_crypto_type group_crypto,
      u8 group_crypto_len, int ssid_len, u8 *ssid,
      u8 *bssid, u16 channel, u32 ctrl_flags,
      u8 nw_subtype)
{
 struct sk_buff *skb;
 struct wmi_connect_cmd *cc;
 int ret;

 ath6kl_dbg(ATH6KL_DBG_WMI,
     "wmi connect bssid %pM freq %d flags 0x%x ssid_len %d "
     "type %d dot11_auth %d auth %d pairwise %d group %d\n",
     bssid, channel, ctrl_flags, ssid_len, nw_type,
     dot11_auth_mode, auth_mode, pairwise_crypto, group_crypto);
 ath6kl_dbg_dump(ATH6KL_DBG_WMI, ((void*)0), "ssid ", ssid, ssid_len);

 wmi->traffic_class = 100;

 if ((pairwise_crypto == NONE_CRYPT) && (group_crypto != NONE_CRYPT))
  return -EINVAL;

 if ((pairwise_crypto != NONE_CRYPT) && (group_crypto == NONE_CRYPT))
  return -EINVAL;

 skb = ath6kl_wmi_get_new_buf(sizeof(struct wmi_connect_cmd));
 if (!skb)
  return -ENOMEM;

 cc = (struct wmi_connect_cmd *) skb->data;

 if (ssid_len)
  memcpy(cc->ssid, ssid, ssid_len);

 cc->ssid_len = ssid_len;
 cc->nw_type = nw_type;
 cc->dot11_auth_mode = dot11_auth_mode;
 cc->auth_mode = auth_mode;
 cc->prwise_crypto_type = pairwise_crypto;
 cc->prwise_crypto_len = pairwise_crypto_len;
 cc->grp_crypto_type = group_crypto;
 cc->grp_crypto_len = group_crypto_len;
 cc->ch = cpu_to_le16(channel);
 cc->ctrl_flags = cpu_to_le32(ctrl_flags);
 cc->nw_subtype = nw_subtype;

 if (bssid != ((void*)0))
  memcpy(cc->bssid, bssid, ETH_ALEN);

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_CONNECT_CMDID,
      NO_SYNC_WMIFLAG);

 return ret;
}
