
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct lbs_private {int dev; int tx_pending_len; int connect_status; int assoc_bss; int fwrelease; } ;
struct TYPE_6__ {void* size; } ;
struct cmd_ds_802_11_associate_response {int iebuf; TYPE_3__ hdr; void* aid; void* capability; void* statuscode; } ;
struct TYPE_5__ {void* size; void* command; } ;
struct cmd_ds_802_11_associate {TYPE_2__ hdr; int * iebuf; void* capability; void* listeninterval; int bssid; } ;
struct cfg80211_connect_params {int ie_len; int ie; int auth_type; } ;
struct cfg80211_bss {size_t capability; int bssid; TYPE_1__* channel; } ;
struct TYPE_4__ {int hw_value; } ;


 size_t CMD_802_11_ASSOCIATE ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int LBS_ASSOC_MAX_CMD_SIZE ;
 int LBS_CONNECTED ;
 int LBS_DEB_ASSOC ;
 size_t MRVDRV_DEFAULT_LISTEN_INTERVAL ;
 int MRVL_FW_MAJOR_REV (int ) ;
 int WLAN_EID_SSID ;
 int WLAN_STATUS_ASSOC_DENIED_UNSPEC ;
 int WLAN_STATUS_AUTH_TIMEOUT ;
 int WLAN_STATUS_CAPS_UNSUPPORTED ;
 int WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION ;
 int cfg80211_connect_result (int ,int ,int ,int ,int ,size_t,int,int ) ;
 void* cpu_to_le16 (size_t) ;
 int * ieee80211_bss_get_ie (struct cfg80211_bss*,int ) ;
 int kfree (struct cmd_ds_802_11_associate*) ;
 struct cmd_ds_802_11_associate* kzalloc (int ,int ) ;
 int lbs_add_auth_type_tlv (int *,int ) ;
 int lbs_add_cf_param_tlv (int *) ;
 int lbs_add_channel_tlv (int *,int ) ;
 int lbs_add_common_rates_tlv (int *,struct cfg80211_bss*) ;
 int lbs_add_ssid_tlv (int *,int const*,int const) ;
 int lbs_add_wpa_tlv (int *,int ,int ) ;
 int lbs_cmd_with_response (struct lbs_private*,size_t,struct cmd_ds_802_11_associate*) ;
 int lbs_deb_assoc (char*,...) ;
 int lbs_deb_hex (int ,char*,int *,int) ;
 int le16_to_cpu (void*) ;
 int memcpy (int ,int ,int ) ;
 int netif_carrier_on (int ) ;
 int netif_tx_wake_all_queues (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int lbs_associate(struct lbs_private *priv,
  struct cfg80211_bss *bss,
  struct cfg80211_connect_params *sme)
{
 struct cmd_ds_802_11_associate_response *resp;
 struct cmd_ds_802_11_associate *cmd = kzalloc(LBS_ASSOC_MAX_CMD_SIZE,
            GFP_KERNEL);
 const u8 *ssid_eid;
 size_t len, resp_ie_len;
 int status;
 int ret;
 u8 *pos;
 u8 *tmp;

 if (!cmd) {
  ret = -ENOMEM;
  goto done;
 }
 pos = &cmd->iebuf[0];
 cmd->hdr.command = cpu_to_le16(CMD_802_11_ASSOCIATE);


 memcpy(cmd->bssid, bss->bssid, ETH_ALEN);
 cmd->listeninterval = cpu_to_le16(MRVDRV_DEFAULT_LISTEN_INTERVAL);
 cmd->capability = cpu_to_le16(bss->capability);


 rcu_read_lock();
 ssid_eid = ieee80211_bss_get_ie(bss, WLAN_EID_SSID);
 if (ssid_eid)
  pos += lbs_add_ssid_tlv(pos, ssid_eid + 2, ssid_eid[1]);
 else
  lbs_deb_assoc("no SSID\n");
 rcu_read_unlock();


 if (bss->channel)
  pos += lbs_add_channel_tlv(pos, bss->channel->hw_value);
 else
  lbs_deb_assoc("no channel\n");


 pos += lbs_add_cf_param_tlv(pos);


 tmp = pos + 4;
 pos += lbs_add_common_rates_tlv(pos, bss);
 lbs_deb_hex(LBS_DEB_ASSOC, "Common Rates", tmp, pos - tmp);


 if (MRVL_FW_MAJOR_REV(priv->fwrelease) >= 9)
  pos += lbs_add_auth_type_tlv(pos, sme->auth_type);


 if (sme->ie && sme->ie_len)
  pos += lbs_add_wpa_tlv(pos, sme->ie, sme->ie_len);

 len = (sizeof(*cmd) - sizeof(cmd->iebuf)) +
  (u16)(pos - (u8 *) &cmd->iebuf);
 cmd->hdr.size = cpu_to_le16(len);

 lbs_deb_hex(LBS_DEB_ASSOC, "ASSOC_CMD", (u8 *) cmd,
   le16_to_cpu(cmd->hdr.size));


 memcpy(priv->assoc_bss, bss->bssid, ETH_ALEN);

 ret = lbs_cmd_with_response(priv, CMD_802_11_ASSOCIATE, cmd);
 if (ret)
  goto done;



 resp = (void *) cmd;
 status = le16_to_cpu(resp->statuscode);
 if (MRVL_FW_MAJOR_REV(priv->fwrelease) <= 8) {
  switch (status) {
  case 0:
   break;
  case 1:
   lbs_deb_assoc("invalid association parameters\n");
   status = WLAN_STATUS_CAPS_UNSUPPORTED;
   break;
  case 2:
   lbs_deb_assoc("timer expired while waiting for AP\n");
   status = WLAN_STATUS_AUTH_TIMEOUT;
   break;
  case 3:
   lbs_deb_assoc("association refused by AP\n");
   status = WLAN_STATUS_ASSOC_DENIED_UNSPEC;
   break;
  case 4:
   lbs_deb_assoc("authentication refused by AP\n");
   status = WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION;
   break;
  default:
   lbs_deb_assoc("association failure %d\n", status);



   break;
  }
 }

 lbs_deb_assoc("status %d, statuscode 0x%04x, capability 0x%04x, "
        "aid 0x%04x\n", status, le16_to_cpu(resp->statuscode),
        le16_to_cpu(resp->capability), le16_to_cpu(resp->aid));

 resp_ie_len = le16_to_cpu(resp->hdr.size)
  - sizeof(resp->hdr)
  - 6;
 cfg80211_connect_result(priv->dev,
    priv->assoc_bss,
    sme->ie, sme->ie_len,
    resp->iebuf, resp_ie_len,
    status,
    GFP_KERNEL);

 if (status == 0) {

  priv->connect_status = LBS_CONNECTED;
  netif_carrier_on(priv->dev);
  if (!priv->tx_pending_len)
   netif_tx_wake_all_queues(priv->dev);
 }

 kfree(cmd);
done:
 return ret;
}
