
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct lbs_private {int fwrelease; } ;
struct TYPE_11__ {int len; int id; } ;
struct TYPE_12__ {int channel; TYPE_4__ header; } ;
struct TYPE_9__ {int len; int id; } ;
struct TYPE_10__ {scalar_t__ atimwindow; TYPE_2__ header; } ;
struct TYPE_8__ {void* size; } ;
struct cmd_ds_802_11_ad_hoc_start {int rates; void* capability; void* probedelay; TYPE_5__ ds; TYPE_3__ ibss; void* beaconperiod; int bsstype; int ssid; TYPE_1__ hdr; } ;
struct cmd_ds_802_11_ad_hoc_result {int bssid; } ;
struct TYPE_14__ {TYPE_6__* chan; } ;
struct cfg80211_ibss_params {int beacon_interval; TYPE_7__ chandef; int ssid_len; int ssid; } ;
typedef int cmd ;
struct TYPE_13__ {int hw_value; } ;


 int CMD_802_11_AD_HOC_START ;
 int CMD_BSS_TYPE_IBSS ;
 int CMD_SCAN_PROBE_DELAY_TIME ;
 int MRVL_FW_MAJOR_REV (int ) ;
 int RADIO_PREAMBLE_SHORT ;
 int WLAN_CAPABILITY_IBSS ;
 int WLAN_EID_DS_PARAMS ;
 int WLAN_EID_IBSS_PARAMS ;
 void* cpu_to_le16 (int) ;
 int lbs_add_rates (int ) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_ad_hoc_start*) ;
 int lbs_join_post (struct lbs_private*,struct cfg80211_ibss_params*,int ,int) ;
 int lbs_set_radio (struct lbs_private*,int ,int) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct cmd_ds_802_11_ad_hoc_start*,int ,int) ;

__attribute__((used)) static int lbs_ibss_start_new(struct lbs_private *priv,
 struct cfg80211_ibss_params *params)
{
 struct cmd_ds_802_11_ad_hoc_start cmd;
 struct cmd_ds_802_11_ad_hoc_result *resp =
  (struct cmd_ds_802_11_ad_hoc_result *) &cmd;
 u8 preamble = RADIO_PREAMBLE_SHORT;
 int ret = 0;
 u16 capability;

 ret = lbs_set_radio(priv, preamble, 1);
 if (ret)
  goto out;
 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 memcpy(cmd.ssid, params->ssid, params->ssid_len);
 cmd.bsstype = CMD_BSS_TYPE_IBSS;
 cmd.beaconperiod = cpu_to_le16(params->beacon_interval);
 cmd.ibss.header.id = WLAN_EID_IBSS_PARAMS;
 cmd.ibss.header.len = 2;
 cmd.ibss.atimwindow = 0;
 cmd.ds.header.id = WLAN_EID_DS_PARAMS;
 cmd.ds.header.len = 1;
 cmd.ds.channel = params->chandef.chan->hw_value;

 if (MRVL_FW_MAJOR_REV(priv->fwrelease) <= 8)
  cmd.probedelay = cpu_to_le16(CMD_SCAN_PROBE_DELAY_TIME);

 capability = WLAN_CAPABILITY_IBSS;
 cmd.capability = cpu_to_le16(capability);
 lbs_add_rates(cmd.rates);


 ret = lbs_cmd_with_response(priv, CMD_802_11_AD_HOC_START, &cmd);
 if (ret)
  goto out;
 lbs_join_post(priv, params, resp->bssid, capability);

 out:
 return ret;
}
