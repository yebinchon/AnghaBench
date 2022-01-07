
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_6__ {int wiphy; } ;
struct TYPE_5__ {int wpa_enabled; int wpa2_enabled; int is_authtype_auto; int authentication_mode; scalar_t__ encryption_mode; } ;
struct mwifiex_private {int cfg_bssid; int adapter; TYPE_3__ wdev; scalar_t__ wep_key_curr_index; TYPE_2__ sec_info; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_ssid {size_t ssid_len; int* ssid; } ;
struct TYPE_4__ {scalar_t__ cipher_group; scalar_t__* ciphers_pairwise; scalar_t__ n_ciphers_pairwise; } ;
struct cfg80211_connect_params {int auth_type; scalar_t__ key_idx; int key_len; int * key; int ie_len; scalar_t__ ie; TYPE_1__ crypto; } ;
struct cfg80211_bss {int const* bssid; } ;


 int EFAULT ;
 int EINVAL ;
 int ERROR ;
 size_t ETH_ALEN ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_802_11_IBSS_COALESCING_STATUS ;
 int IEEE80211_BSS_TYPE_ESS ;
 int IEEE80211_BSS_TYPE_IBSS ;
 size_t IEEE80211_MAX_SSID_LEN ;
 int IEEE80211_PRIVACY_ANY ;
 int INFO ;
 int MSG ;
 int NL80211_AUTHTYPE_AUTOMATIC ;
 void* NL80211_AUTHTYPE_OPEN_SYSTEM ;
 int NL80211_IFTYPE_ADHOC ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 struct cfg80211_bss* cfg80211_get_bss (int ,struct ieee80211_channel*,int const*,int const*,size_t,int ,int ) ;
 int memcpy (int*,int const*,size_t) ;
 int memset (struct cfg80211_ssid*,int ,int) ;
 int mwifiex_bss_start (struct mwifiex_private*,struct cfg80211_bss*,struct cfg80211_ssid*) ;
 scalar_t__ mwifiex_cfg80211_inform_ibss_bss (struct mwifiex_private*) ;
 int mwifiex_dbg (int ,int ,char*,...) ;
 scalar_t__ mwifiex_is_alg_wep (scalar_t__) ;
 scalar_t__ mwifiex_request_scan (struct mwifiex_private*,struct cfg80211_ssid*) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,int*,int) ;
 int mwifiex_set_encode (struct mwifiex_private*,int *,int *,int ,scalar_t__,int *,int) ;
 int mwifiex_set_gen_ie (struct mwifiex_private*,scalar_t__,int ) ;

__attribute__((used)) static int
mwifiex_cfg80211_assoc(struct mwifiex_private *priv, size_t ssid_len,
         const u8 *ssid, const u8 *bssid, int mode,
         struct ieee80211_channel *channel,
         struct cfg80211_connect_params *sme, bool privacy)
{
 struct cfg80211_ssid req_ssid;
 int ret, auth_type = 0;
 struct cfg80211_bss *bss = ((void*)0);
 u8 is_scanning_required = 0;

 memset(&req_ssid, 0, sizeof(struct cfg80211_ssid));

 req_ssid.ssid_len = ssid_len;
 if (ssid_len > IEEE80211_MAX_SSID_LEN) {
  mwifiex_dbg(priv->adapter, ERROR, "invalid SSID - aborting\n");
  return -EINVAL;
 }

 memcpy(req_ssid.ssid, ssid, ssid_len);
 if (!req_ssid.ssid_len || req_ssid.ssid[0] < 0x20) {
  mwifiex_dbg(priv->adapter, ERROR, "invalid SSID - aborting\n");
  return -EINVAL;
 }



 priv->sec_info.wpa_enabled = 0;
 priv->sec_info.wpa2_enabled = 0;
 priv->wep_key_curr_index = 0;
 priv->sec_info.encryption_mode = 0;
 priv->sec_info.is_authtype_auto = 0;
 ret = mwifiex_set_encode(priv, ((void*)0), ((void*)0), 0, 0, ((void*)0), 1);

 if (mode == NL80211_IFTYPE_ADHOC) {
  u16 enable = 1;


  ret = mwifiex_send_cmd(
    priv,
    HostCmd_CMD_802_11_IBSS_COALESCING_STATUS,
    HostCmd_ACT_GEN_SET, 0, &enable, 1);
  if (ret)
   return ret;


  if (privacy) {






   priv->sec_info.encryption_mode =
     WLAN_CIPHER_SUITE_WEP104;
   priv->sec_info.authentication_mode =
     NL80211_AUTHTYPE_OPEN_SYSTEM;
  }

  goto done;
 }


 if (sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC) {
  auth_type = NL80211_AUTHTYPE_OPEN_SYSTEM;
  priv->sec_info.is_authtype_auto = 1;
 } else {
  auth_type = sme->auth_type;
 }

 if (sme->crypto.n_ciphers_pairwise) {
  priv->sec_info.encryption_mode =
      sme->crypto.ciphers_pairwise[0];
  priv->sec_info.authentication_mode = auth_type;
 }

 if (sme->crypto.cipher_group) {
  priv->sec_info.encryption_mode = sme->crypto.cipher_group;
  priv->sec_info.authentication_mode = auth_type;
 }
 if (sme->ie)
  ret = mwifiex_set_gen_ie(priv, sme->ie, sme->ie_len);

 if (sme->key) {
  if (mwifiex_is_alg_wep(priv->sec_info.encryption_mode)) {
   mwifiex_dbg(priv->adapter, INFO,
        "info: setting wep encryption\t"
        "with key len %d\n", sme->key_len);
   priv->wep_key_curr_index = sme->key_idx;
   ret = mwifiex_set_encode(priv, ((void*)0), sme->key,
       sme->key_len, sme->key_idx,
       ((void*)0), 0);
  }
 }
done:





 while (1) {
  if (is_scanning_required) {

   if (mwifiex_request_scan(priv, &req_ssid)) {
    mwifiex_dbg(priv->adapter, ERROR, "scan error\n");
    return -EFAULT;
   }
  }


  if (mode == NL80211_IFTYPE_ADHOC)
   bss = cfg80211_get_bss(priv->wdev.wiphy, channel,
            bssid, ssid, ssid_len,
            IEEE80211_BSS_TYPE_IBSS,
            IEEE80211_PRIVACY_ANY);
  else
   bss = cfg80211_get_bss(priv->wdev.wiphy, channel,
            bssid, ssid, ssid_len,
            IEEE80211_BSS_TYPE_ESS,
            IEEE80211_PRIVACY_ANY);

  if (!bss) {
   if (is_scanning_required) {
    mwifiex_dbg(priv->adapter, MSG,
         "assoc: requested bss not found in scan results\n");
    break;
   }
   is_scanning_required = 1;
  } else {
   mwifiex_dbg(priv->adapter, MSG,
        "info: trying to associate to '%.*s' bssid %pM\n",
        req_ssid.ssid_len, (char *)req_ssid.ssid,
        bss->bssid);
   memcpy(&priv->cfg_bssid, bss->bssid, ETH_ALEN);
   break;
  }
 }

 ret = mwifiex_bss_start(priv, bss, &req_ssid);
 if (ret)
  return ret;

 if (mode == NL80211_IFTYPE_ADHOC) {


  if (mwifiex_cfg80211_inform_ibss_bss(priv))
   return -EFAULT;
 }

 return ret;
}
