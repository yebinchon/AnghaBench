
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct lbs_private {size_t wep_tx_key; int mac_control; int * wep_key; int * wep_key_len; int * scan_req; int scan_q; struct net_device* mesh_dev; } ;
struct cfg80211_scan_request {int dummy; } ;
struct TYPE_2__ {int cipher_group; } ;
struct cfg80211_connect_params {int bssid; size_t key_idx; int auth_type; TYPE_1__ crypto; int key_len; int key; int ssid_len; int ssid; int channel; } ;
struct cfg80211_bss {int bssid; } ;


 int CMD_ACT_MAC_WEP_ENABLE ;
 int EINVAL ;
 int ENOENT ;
 int ENOTSUPP ;
 int EOPNOTSUPP ;
 int HZ ;
 int IEEE80211_BSS_TYPE_ESS ;
 int IEEE80211_PRIVACY_ANY ;
 int KEY_INFO_WPA_MCAST ;
 int KEY_INFO_WPA_UNICAST ;
 int KEY_TYPE_ID_WEP ;
 int RADIO_PREAMBLE_SHORT ;




 int _internal_start_scan (struct lbs_private*,int,struct cfg80211_scan_request*) ;
 struct cfg80211_scan_request* _new_connect_scan_req (struct wiphy*,struct cfg80211_connect_params*) ;
 struct cfg80211_bss* cfg80211_get_bss (struct wiphy*,int ,int,int ,int ,int ,int ) ;
 int cfg80211_put_bss (struct wiphy*,struct cfg80211_bss*) ;
 int lbs_associate (struct lbs_private*,struct cfg80211_bss*,struct cfg80211_connect_params*) ;
 int lbs_deb_assoc (char*,...) ;
 int lbs_enable_rsn (struct lbs_private*,int) ;
 int lbs_remove_wep_keys (struct lbs_private*) ;
 int lbs_set_authtype (struct lbs_private*,struct cfg80211_connect_params*) ;
 int lbs_set_key_material (struct lbs_private*,int ,int ,int *,int ) ;
 int lbs_set_mac_control (struct lbs_private*) ;
 int lbs_set_radio (struct lbs_private*,int ,int) ;
 int lbs_set_wep_keys (struct lbs_private*) ;
 int memcpy (int ,int ,int ) ;
 int memset (int *,int ,int) ;
 int wait_event_interruptible_timeout (int ,int ,int) ;
 int wiphy_err (struct wiphy*,char*,int) ;
 struct lbs_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int lbs_cfg_connect(struct wiphy *wiphy, struct net_device *dev,
      struct cfg80211_connect_params *sme)
{
 struct lbs_private *priv = wiphy_priv(wiphy);
 struct cfg80211_bss *bss = ((void*)0);
 int ret = 0;
 u8 preamble = RADIO_PREAMBLE_SHORT;

 if (dev == priv->mesh_dev)
  return -EOPNOTSUPP;

 if (!sme->bssid) {
  struct cfg80211_scan_request *creq;





  lbs_deb_assoc("assoc: waiting for existing scans\n");
  wait_event_interruptible_timeout(priv->scan_q,
       (priv->scan_req == ((void*)0)),
       (15 * HZ));

  creq = _new_connect_scan_req(wiphy, sme);
  if (!creq) {
   ret = -EINVAL;
   goto done;
  }

  lbs_deb_assoc("assoc: scanning for compatible AP\n");
  _internal_start_scan(priv, 1, creq);

  lbs_deb_assoc("assoc: waiting for scan to complete\n");
  wait_event_interruptible_timeout(priv->scan_q,
       (priv->scan_req == ((void*)0)),
       (15 * HZ));
  lbs_deb_assoc("assoc: scanning completed\n");
 }


 bss = cfg80211_get_bss(wiphy, sme->channel, sme->bssid,
  sme->ssid, sme->ssid_len, IEEE80211_BSS_TYPE_ESS,
  IEEE80211_PRIVACY_ANY);
 if (!bss) {
  wiphy_err(wiphy, "assoc: bss %pM not in scan results\n",
     sme->bssid);
  ret = -ENOENT;
  goto done;
 }
 lbs_deb_assoc("trying %pM\n", bss->bssid);
 lbs_deb_assoc("cipher 0x%x, key index %d, key len %d\n",
        sme->crypto.cipher_group,
        sme->key_idx, sme->key_len);


 priv->wep_tx_key = 0;
 memset(priv->wep_key, 0, sizeof(priv->wep_key));
 memset(priv->wep_key_len, 0, sizeof(priv->wep_key_len));


 switch (sme->crypto.cipher_group) {
 case 128:
 case 129:

  priv->wep_tx_key = sme->key_idx;
  priv->wep_key_len[sme->key_idx] = sme->key_len;
  memcpy(priv->wep_key[sme->key_idx], sme->key, sme->key_len);

  lbs_set_wep_keys(priv);
  priv->mac_control |= CMD_ACT_MAC_WEP_ENABLE;
  lbs_set_mac_control(priv);

  lbs_enable_rsn(priv, 0);
  break;
 case 0:







 case 130:
 case 131:

  lbs_remove_wep_keys(priv);
  priv->mac_control &= ~CMD_ACT_MAC_WEP_ENABLE;
  lbs_set_mac_control(priv);


  lbs_set_key_material(priv,
   KEY_TYPE_ID_WEP,
   KEY_INFO_WPA_UNICAST,
   ((void*)0), 0);
  lbs_set_key_material(priv,
   KEY_TYPE_ID_WEP,
   KEY_INFO_WPA_MCAST,
   ((void*)0), 0);

  lbs_enable_rsn(priv, sme->crypto.cipher_group != 0);
  break;
 default:
  wiphy_err(wiphy, "unsupported cipher group 0x%x\n",
     sme->crypto.cipher_group);
  ret = -ENOTSUPP;
  goto done;
 }

 ret = lbs_set_authtype(priv, sme);
 if (ret == -ENOTSUPP) {
  wiphy_err(wiphy, "unsupported authtype 0x%x\n", sme->auth_type);
  goto done;
 }

 lbs_set_radio(priv, preamble, 1);


 ret = lbs_associate(priv, bss, sme);

 done:
 if (bss)
  cfg80211_put_bss(wiphy, bss);
 return ret;
}
