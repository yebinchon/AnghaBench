
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct lbs_private {int fwrelease; } ;
struct TYPE_16__ {int len; int id; } ;
struct TYPE_17__ {scalar_t__ atimwindow; TYPE_6__ header; } ;
struct TYPE_12__ {int len; int id; } ;
struct TYPE_13__ {int channel; TYPE_2__ header; } ;
struct TYPE_18__ {int* rates; void* capability; TYPE_7__ ibss; TYPE_3__ ds; void* beaconperiod; int type; int ssid; int bssid; } ;
struct TYPE_11__ {void* size; } ;
struct cmd_ds_802_11_ad_hoc_join {void* probedelay; void* failtimeout; TYPE_8__ bss; TYPE_1__ hdr; } ;
struct TYPE_15__ {TYPE_4__* chan; } ;
struct cfg80211_ibss_params {int beacon_interval; TYPE_5__ chandef; int ssid_len; int ssid; } ;
struct cfg80211_bss {int capability; int bssid; } ;
typedef int cmd ;
struct TYPE_19__ {int bitrate; } ;
struct TYPE_14__ {int hw_value; } ;


 int ARRAY_SIZE (TYPE_9__*) ;
 int CAPINFO_MASK ;
 int CMD_802_11_AD_HOC_JOIN ;
 int CMD_BSS_TYPE_IBSS ;
 int CMD_SCAN_PROBE_DELAY_TIME ;
 int ETH_ALEN ;
 int MRVDRV_ASSOCIATION_TIME_OUT ;
 int MRVL_FW_MAJOR_REV (int ) ;
 int RADIO_PREAMBLE_SHORT ;
 int WLAN_EID_DS_PARAMS ;
 int WLAN_EID_IBSS_PARAMS ;
 int WLAN_EID_SUPP_RATES ;
 void* cpu_to_le16 (int) ;
 int* ieee80211_bss_get_ie (struct cfg80211_bss*,int ) ;
 int lbs_add_rates (int*) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_ad_hoc_join*) ;
 int lbs_join_post (struct lbs_private*,struct cfg80211_ibss_params*,int ,int) ;
 TYPE_9__* lbs_rates ;
 int lbs_set_radio (struct lbs_private*,int,int) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct cmd_ds_802_11_ad_hoc_join*,int ,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int lbs_ibss_join_existing(struct lbs_private *priv,
 struct cfg80211_ibss_params *params,
 struct cfg80211_bss *bss)
{
 const u8 *rates_eid;
 struct cmd_ds_802_11_ad_hoc_join cmd;
 u8 preamble = RADIO_PREAMBLE_SHORT;
 int ret = 0;


 ret = lbs_set_radio(priv, preamble, 1);
 if (ret)
  goto out;
 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));

 memcpy(cmd.bss.bssid, bss->bssid, ETH_ALEN);
 memcpy(cmd.bss.ssid, params->ssid, params->ssid_len);
 cmd.bss.type = CMD_BSS_TYPE_IBSS;
 cmd.bss.beaconperiod = cpu_to_le16(params->beacon_interval);
 cmd.bss.ds.header.id = WLAN_EID_DS_PARAMS;
 cmd.bss.ds.header.len = 1;
 cmd.bss.ds.channel = params->chandef.chan->hw_value;
 cmd.bss.ibss.header.id = WLAN_EID_IBSS_PARAMS;
 cmd.bss.ibss.header.len = 2;
 cmd.bss.ibss.atimwindow = 0;
 cmd.bss.capability = cpu_to_le16(bss->capability & CAPINFO_MASK);



 rcu_read_lock();
 rates_eid = ieee80211_bss_get_ie(bss, WLAN_EID_SUPP_RATES);
 if (!rates_eid) {
  lbs_add_rates(cmd.bss.rates);
 } else {
  int hw, i;
  u8 rates_max = rates_eid[1];
  u8 *rates = cmd.bss.rates;
  for (hw = 0; hw < ARRAY_SIZE(lbs_rates); hw++) {
   u8 hw_rate = lbs_rates[hw].bitrate / 5;
   for (i = 0; i < rates_max; i++) {
    if (hw_rate == (rates_eid[i+2] & 0x7f)) {
     u8 rate = rates_eid[i+2];
     if (rate == 0x02 || rate == 0x04 ||
         rate == 0x0b || rate == 0x16)
      rate |= 0x80;
     *rates++ = rate;
    }
   }
  }
 }
 rcu_read_unlock();


 if (MRVL_FW_MAJOR_REV(priv->fwrelease) <= 8) {
  cmd.failtimeout = cpu_to_le16(MRVDRV_ASSOCIATION_TIME_OUT);
  cmd.probedelay = cpu_to_le16(CMD_SCAN_PROBE_DELAY_TIME);
 }
 ret = lbs_cmd_with_response(priv, CMD_802_11_AD_HOC_JOIN, &cmd);
 if (ret)
  goto out;
 lbs_join_post(priv, params, bss->bssid, bss->capability);

 out:
 return ret;
}
