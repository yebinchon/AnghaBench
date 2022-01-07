
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mwl8k_vif {int macid; int is_hw_crypto_enabled; int list; int bssid; scalar_t__ seqno; struct ieee80211_vif* vif; } ;
struct mwl8k_priv {int ap_macids_supported; int sta_macids_supported; int macids_used; int vif_list; int ap_fw; struct mwl8k_device_info* device_info; scalar_t__ sniffer_enabled; } ;
struct mwl8k_device_info {int fw_image_sta; int fw_image_ap; } ;
struct ieee80211_vif {int type; int addr; } ;
struct ieee80211_hw {int wiphy; struct mwl8k_priv* priv; } ;


 int EBUSY ;
 int EINVAL ;
 int ETH_ALEN ;
 struct mwl8k_vif* MWL8K_VIF (struct ieee80211_vif*) ;


 int ffs (int) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct mwl8k_vif*,int ,int) ;
 int mwl8k_cmd_set_mac_addr (struct ieee80211_hw*,struct ieee80211_vif*,int ) ;
 int mwl8k_cmd_set_new_stn_add_self (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int mwl8k_reload_firmware (struct ieee80211_hw*,int ) ;
 int wiphy_info (int ,char*) ;
 int wiphy_warn (int ,char*) ;

__attribute__((used)) static int mwl8k_add_interface(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif)
{
 struct mwl8k_priv *priv = hw->priv;
 struct mwl8k_vif *mwl8k_vif;
 u32 macids_supported;
 int macid, rc;
 struct mwl8k_device_info *di;






 if (priv->sniffer_enabled) {
  wiphy_info(hw->wiphy,
      "unable to create STA interface because sniffer mode is enabled\n");
  return -EINVAL;
 }

 di = priv->device_info;
 switch (vif->type) {
 case 129:
  if (!priv->ap_fw && di->fw_image_ap) {

   if (!list_empty(&priv->vif_list))
    return -EBUSY;
   rc = mwl8k_reload_firmware(hw, di->fw_image_ap);
   if (rc)
    return rc;
  }
  macids_supported = priv->ap_macids_supported;
  break;
 case 128:
  if (priv->ap_fw && di->fw_image_sta) {
   if (!list_empty(&priv->vif_list)) {
    wiphy_warn(hw->wiphy, "AP interface is running.\n"
        "Adding STA interface for WDS");
   } else {



    rc = mwl8k_reload_firmware(hw,
          di->fw_image_sta);
    if (rc)
     return rc;
   }
  }
  macids_supported = priv->sta_macids_supported;
  break;
 default:
  return -EINVAL;
 }

 macid = ffs(macids_supported & ~priv->macids_used);
 if (!macid--)
  return -EBUSY;


 mwl8k_vif = MWL8K_VIF(vif);
 memset(mwl8k_vif, 0, sizeof(*mwl8k_vif));
 mwl8k_vif->vif = vif;
 mwl8k_vif->macid = macid;
 mwl8k_vif->seqno = 0;
 memcpy(mwl8k_vif->bssid, vif->addr, ETH_ALEN);
 mwl8k_vif->is_hw_crypto_enabled = 0;


 mwl8k_cmd_set_mac_addr(hw, vif, vif->addr);

 if (vif->type == 129)
  mwl8k_cmd_set_new_stn_add_self(hw, vif);

 priv->macids_used |= 1 << mwl8k_vif->macid;
 list_add_tail(&mwl8k_vif->list, &priv->vif_list);

 return 0;
}
