
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_wep_key {int key_index; int key_length; int key_material; } ;
struct TYPE_2__ {int wep_enabled; } ;
struct mwifiex_private {int adapter; TYPE_1__ sec_info; struct mwifiex_wep_key* wep_key; } ;
struct key_params {scalar_t__ cipher; int key_len; int key; } ;


 int EFAULT ;
 int ERROR ;
 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;
 int memcpy (int ,int ,int ) ;
 int memset (struct mwifiex_wep_key*,int ,int) ;
 int mwifiex_dbg (int ,int ,char*) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 scalar_t__ mwifiex_set_encode (struct mwifiex_private*,struct key_params*,int ,int ,int,int const*,int ) ;

__attribute__((used)) static int
mwifiex_cfg80211_add_key(struct wiphy *wiphy, struct net_device *netdev,
    u8 key_index, bool pairwise, const u8 *mac_addr,
    struct key_params *params)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(netdev);
 struct mwifiex_wep_key *wep_key;
 static const u8 bc_mac[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 const u8 *peer_mac = pairwise ? mac_addr : bc_mac;

 if (GET_BSS_ROLE(priv) == MWIFIEX_BSS_ROLE_UAP &&
     (params->cipher == WLAN_CIPHER_SUITE_WEP40 ||
      params->cipher == WLAN_CIPHER_SUITE_WEP104)) {
  if (params->key && params->key_len) {
   wep_key = &priv->wep_key[key_index];
   memset(wep_key, 0, sizeof(struct mwifiex_wep_key));
   memcpy(wep_key->key_material, params->key,
          params->key_len);
   wep_key->key_index = key_index;
   wep_key->key_length = params->key_len;
   priv->sec_info.wep_enabled = 1;
  }
  return 0;
 }

 if (mwifiex_set_encode(priv, params, params->key, params->key_len,
          key_index, peer_mac, 0)) {
  mwifiex_dbg(priv->adapter, ERROR, "crypto keys added\n");
  return -EFAULT;
 }

 return 0;
}
