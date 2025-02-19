
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_set_htcap_cmd {int band; int ht_enable; int ht20_sgi; int ht40_supported; int ht40_sgi; int intolerant_40mhz; int max_ampdu_len_exp; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath6kl_htcap {int cap_info; int ampdu_factor; int ht_enable; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int ATH6KL_DBG_WMI ;
 int ENOMEM ;
 int IEEE80211_HT_CAP_40MHZ_INTOLERANT ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int NO_SYNC_WMIFLAG ;
 int WMI_SET_HT_CAP_CMDID ;
 int ath6kl_dbg (int ,char*,int,int,int,int,int,int,int ) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;

int ath6kl_wmi_set_htcap_cmd(struct wmi *wmi, u8 if_idx,
        enum nl80211_band band,
        struct ath6kl_htcap *htcap)
{
 struct sk_buff *skb;
 struct wmi_set_htcap_cmd *cmd;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_set_htcap_cmd *) skb->data;






 cmd->band = band;
 cmd->ht_enable = !!htcap->ht_enable;
 cmd->ht20_sgi = !!(htcap->cap_info & IEEE80211_HT_CAP_SGI_20);
 cmd->ht40_supported =
  !!(htcap->cap_info & IEEE80211_HT_CAP_SUP_WIDTH_20_40);
 cmd->ht40_sgi = !!(htcap->cap_info & IEEE80211_HT_CAP_SGI_40);
 cmd->intolerant_40mhz =
  !!(htcap->cap_info & IEEE80211_HT_CAP_40MHZ_INTOLERANT);
 cmd->max_ampdu_len_exp = htcap->ampdu_factor;

 ath6kl_dbg(ATH6KL_DBG_WMI,
     "Set htcap: band:%d ht_enable:%d 40mhz:%d sgi_20mhz:%d sgi_40mhz:%d 40mhz_intolerant:%d ampdu_len_exp:%d\n",
     cmd->band, cmd->ht_enable, cmd->ht40_supported,
     cmd->ht20_sgi, cmd->ht40_sgi, cmd->intolerant_40mhz,
     cmd->max_ampdu_len_exp);
 return ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_SET_HT_CAP_CMDID,
       NO_SYNC_WMIFLAG);
}
