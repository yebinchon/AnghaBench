
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct lbs_private {int * wep_key; int * wep_key_len; struct net_device* mesh_dev; } ;
struct key_params {int cipher; int key_len; int key; int seq_len; int seq; } ;


 int ENOTSUPP ;
 int EOPNOTSUPP ;
 int KEY_INFO_WPA_ENABLED ;
 int KEY_INFO_WPA_MCAST ;
 int KEY_INFO_WPA_UNICAST ;
 int KEY_TYPE_ID_AES ;
 int KEY_TYPE_ID_TKIP ;
 int LBS_DEB_CFG80211 ;




 int lbs_deb_assoc (char*,int,...) ;
 int lbs_deb_hex (int ,char*,int ,int ) ;
 int lbs_set_key_material (struct lbs_private*,int,int,int ,int ) ;
 int lbs_set_wep_keys (struct lbs_private*) ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int wiphy_err (struct wiphy*,char*,int const) ;
 struct lbs_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int lbs_cfg_add_key(struct wiphy *wiphy, struct net_device *netdev,
      u8 idx, bool pairwise, const u8 *mac_addr,
      struct key_params *params)
{
 struct lbs_private *priv = wiphy_priv(wiphy);
 u16 key_info;
 u16 key_type;
 int ret = 0;

 if (netdev == priv->mesh_dev)
  return -EOPNOTSUPP;

 lbs_deb_assoc("add_key: cipher 0x%x, mac_addr %pM\n",
        params->cipher, mac_addr);
 lbs_deb_assoc("add_key: key index %d, key len %d\n",
        idx, params->key_len);
 if (params->key_len)
  lbs_deb_hex(LBS_DEB_CFG80211, "KEY",
       params->key, params->key_len);

 lbs_deb_assoc("add_key: seq len %d\n", params->seq_len);
 if (params->seq_len)
  lbs_deb_hex(LBS_DEB_CFG80211, "SEQ",
       params->seq, params->seq_len);

 switch (params->cipher) {
 case 128:
 case 129:

  if ((priv->wep_key_len[idx] != params->key_len) ||
   memcmp(priv->wep_key[idx],
          params->key, params->key_len) != 0) {
   priv->wep_key_len[idx] = params->key_len;
   memcpy(priv->wep_key[idx],
          params->key, params->key_len);
   lbs_set_wep_keys(priv);
  }
  break;
 case 130:
 case 131:
  key_info = KEY_INFO_WPA_ENABLED | ((idx == 0)
         ? KEY_INFO_WPA_UNICAST
         : KEY_INFO_WPA_MCAST);
  key_type = (params->cipher == 130)
   ? KEY_TYPE_ID_TKIP
   : KEY_TYPE_ID_AES;
  lbs_set_key_material(priv,
         key_type,
         key_info,
         params->key, params->key_len);
  break;
 default:
  wiphy_err(wiphy, "unhandled cipher 0x%x\n", params->cipher);
  ret = -ENOTSUPP;
  break;
 }

 return ret;
}
