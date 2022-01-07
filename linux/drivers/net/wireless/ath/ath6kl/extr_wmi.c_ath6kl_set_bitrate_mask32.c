
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wmi_set_tx_select_rates32_cmd {int * ratemask; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct cfg80211_bitrate_mask {TYPE_1__* control; } ;
typedef int ratemask ;
struct TYPE_2__ {int legacy; int* ht_mcs; } ;


 int ATH6KL_DBG_WMI ;
 int ATH6KL_NUM_BANDS ;
 int ENOMEM ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int NO_SYNC_WMIFLAG ;
 int WMI_RATES_MODE_11A ;
 int WMI_RATES_MODE_11A_HT20 ;
 int WMI_RATES_MODE_11A_HT40 ;
 int WMI_RATES_MODE_MAX ;
 int WMI_SET_TX_SELECT_RATES_CMDID ;
 int ath6kl_dbg (int ,char*,int,int) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int cpu_to_le32 (int) ;
 int memset (int**,int ,int) ;

__attribute__((used)) static int ath6kl_set_bitrate_mask32(struct wmi *wmi, u8 if_idx,
         const struct cfg80211_bitrate_mask *mask)
{
 struct sk_buff *skb;
 int ret, mode, band;
 u32 mcsrate, ratemask[ATH6KL_NUM_BANDS];
 struct wmi_set_tx_select_rates32_cmd *cmd;

 memset(&ratemask, 0, sizeof(ratemask));


 for (band = 0; band <= NL80211_BAND_5GHZ; band++) {

  ratemask[band] = mask->control[band].legacy;
  if (band == NL80211_BAND_5GHZ)
   ratemask[band] =
    mask->control[band].legacy << 4;


  mcsrate = mask->control[band].ht_mcs[0];
  ratemask[band] |= mcsrate << 12;
  ratemask[band] |= mcsrate << 20;
 }

 ath6kl_dbg(ATH6KL_DBG_WMI,
     "Ratemask 32 bit: 2.4:%x 5:%x\n",
     ratemask[0], ratemask[1]);

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd) * WMI_RATES_MODE_MAX);
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_set_tx_select_rates32_cmd *) skb->data;
 for (mode = 0; mode < WMI_RATES_MODE_MAX; mode++) {

  if (mode == WMI_RATES_MODE_11A ||
      mode == WMI_RATES_MODE_11A_HT20 ||
      mode == WMI_RATES_MODE_11A_HT40)
   band = NL80211_BAND_5GHZ;
  else
   band = NL80211_BAND_2GHZ;
  cmd->ratemask[mode] = cpu_to_le32(ratemask[band]);
 }

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb,
      WMI_SET_TX_SELECT_RATES_CMDID,
      NO_SYNC_WMIFLAG);
 return ret;
}
