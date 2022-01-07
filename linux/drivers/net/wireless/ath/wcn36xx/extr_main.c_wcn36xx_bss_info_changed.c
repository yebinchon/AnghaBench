
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int ssid; int length; } ;
struct wcn36xx_vif {int is_joining; int sta_assoc; void* bss_index; int dtim_period; TYPE_1__ ssid; int encrypt_type; } ;
struct wcn36xx_sta {int aid; } ;
struct wcn36xx {int conf_mutex; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; int addr; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;
struct ieee80211_bss_conf {int dtim_period; int enable_beacon; int bssid; int aid; scalar_t__ assoc; int ssid_len; int ssid; } ;
typedef enum wcn36xx_hal_link_state { ____Placeholder_wcn36xx_hal_link_state } wcn36xx_hal_link_state ;


 int BSS_CHANGED_AP_PROBE_RESP ;
 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_BEACON_INFO ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_SSID ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int WCN36XX_BAND (struct wcn36xx*) ;
 int WCN36XX_DBG_MAC ;
 void* WCN36XX_HAL_BSS_INVALID_IDX ;
 int WCN36XX_HAL_ED_NONE ;
 int WCN36XX_HAL_LINK_AP_STATE ;
 int WCN36XX_HAL_LINK_IBSS_STATE ;
 int WCN36XX_HAL_LINK_IDLE_STATE ;
 int WCN36XX_HAL_LINK_POSTASSOC_STATE ;
 int WCN36XX_HAL_LINK_PREASSOC_STATE ;
 int WCN36XX_HW_CHANNEL (struct wcn36xx*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* ieee80211_beacon_get_tim (struct ieee80211_hw*,struct ieee80211_vif*,int *,int *) ;
 struct ieee80211_sta* ieee80211_find_sta (struct ieee80211_vif*,int ) ;
 struct sk_buff* ieee80211_proberesp_get (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int is_zero_ether_addr (int ) ;
 int memcpy (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,...) ;
 int wcn36xx_dbg_dump (int ,char*,int ,int ) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_config_bss (struct wcn36xx*,struct ieee80211_vif*,struct ieee80211_sta*,int ,int) ;
 int wcn36xx_smd_config_sta (struct wcn36xx*,struct ieee80211_vif*,struct ieee80211_sta*) ;
 int wcn36xx_smd_delete_bss (struct wcn36xx*,struct ieee80211_vif*) ;
 int wcn36xx_smd_join (struct wcn36xx*,int ,int ,int ) ;
 int wcn36xx_smd_send_beacon (struct wcn36xx*,struct ieee80211_vif*,struct sk_buff*,int ,int ) ;
 int wcn36xx_smd_set_link_st (struct wcn36xx*,int ,int ,int) ;
 int wcn36xx_smd_update_proberesp_tmpl (struct wcn36xx*,struct ieee80211_vif*,struct sk_buff*) ;
 struct wcn36xx_sta* wcn36xx_sta_to_priv (struct ieee80211_sta*) ;
 int wcn36xx_update_allowed_rates (struct ieee80211_sta*,int ) ;
 struct wcn36xx_vif* wcn36xx_vif_to_priv (struct ieee80211_vif*) ;

__attribute__((used)) static void wcn36xx_bss_info_changed(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_bss_conf *bss_conf,
         u32 changed)
{
 struct wcn36xx *wcn = hw->priv;
 struct sk_buff *skb = ((void*)0);
 u16 tim_off, tim_len;
 enum wcn36xx_hal_link_state link_state;
 struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);

 wcn36xx_dbg(WCN36XX_DBG_MAC, "mac bss info changed vif %p changed 0x%08x\n",
      vif, changed);

 mutex_lock(&wcn->conf_mutex);

 if (changed & BSS_CHANGED_BEACON_INFO) {
  wcn36xx_dbg(WCN36XX_DBG_MAC,
       "mac bss changed dtim period %d\n",
       bss_conf->dtim_period);

  vif_priv->dtim_period = bss_conf->dtim_period;
 }

 if (changed & BSS_CHANGED_BSSID) {
  wcn36xx_dbg(WCN36XX_DBG_MAC, "mac bss changed_bssid %pM\n",
       bss_conf->bssid);

  if (!is_zero_ether_addr(bss_conf->bssid)) {
   vif_priv->is_joining = 1;
   vif_priv->bss_index = WCN36XX_HAL_BSS_INVALID_IDX;
   wcn36xx_smd_set_link_st(wcn, bss_conf->bssid, vif->addr,
      WCN36XX_HAL_LINK_PREASSOC_STATE);
   wcn36xx_smd_join(wcn, bss_conf->bssid,
      vif->addr, WCN36XX_HW_CHANNEL(wcn));
   wcn36xx_smd_config_bss(wcn, vif, ((void*)0),
            bss_conf->bssid, 0);
  } else {
   vif_priv->is_joining = 0;
   wcn36xx_smd_delete_bss(wcn, vif);
   wcn36xx_smd_set_link_st(wcn, bss_conf->bssid, vif->addr,
      WCN36XX_HAL_LINK_IDLE_STATE);
   vif_priv->encrypt_type = WCN36XX_HAL_ED_NONE;
  }
 }

 if (changed & BSS_CHANGED_SSID) {
  wcn36xx_dbg(WCN36XX_DBG_MAC,
       "mac bss changed ssid\n");
  wcn36xx_dbg_dump(WCN36XX_DBG_MAC, "ssid ",
     bss_conf->ssid, bss_conf->ssid_len);

  vif_priv->ssid.length = bss_conf->ssid_len;
  memcpy(&vif_priv->ssid.ssid,
         bss_conf->ssid,
         bss_conf->ssid_len);
 }

 if (changed & BSS_CHANGED_ASSOC) {
  vif_priv->is_joining = 0;
  if (bss_conf->assoc) {
   struct ieee80211_sta *sta;
   struct wcn36xx_sta *sta_priv;

   wcn36xx_dbg(WCN36XX_DBG_MAC,
        "mac assoc bss %pM vif %pM AID=%d\n",
         bss_conf->bssid,
         vif->addr,
         bss_conf->aid);

   vif_priv->sta_assoc = 1;







   sta = ieee80211_find_sta(vif, bss_conf->bssid);
   if (!sta) {
    wcn36xx_err("sta %pM is not found\n",
           bss_conf->bssid);
    goto out;
   }
   sta_priv = wcn36xx_sta_to_priv(sta);

   wcn36xx_update_allowed_rates(sta, WCN36XX_BAND(wcn));

   wcn36xx_smd_set_link_st(wcn, bss_conf->bssid,
    vif->addr,
    WCN36XX_HAL_LINK_POSTASSOC_STATE);
   wcn36xx_smd_config_bss(wcn, vif, sta,
            bss_conf->bssid,
            1);
   sta_priv->aid = bss_conf->aid;




   wcn36xx_smd_config_sta(wcn, vif, sta);
  } else {
   wcn36xx_dbg(WCN36XX_DBG_MAC,
        "disassociated bss %pM vif %pM AID=%d\n",
        bss_conf->bssid,
        vif->addr,
        bss_conf->aid);
   vif_priv->sta_assoc = 0;
   wcn36xx_smd_set_link_st(wcn,
      bss_conf->bssid,
      vif->addr,
      WCN36XX_HAL_LINK_IDLE_STATE);
  }
 }

 if (changed & BSS_CHANGED_AP_PROBE_RESP) {
  wcn36xx_dbg(WCN36XX_DBG_MAC, "mac bss changed ap probe resp\n");
  skb = ieee80211_proberesp_get(hw, vif);
  if (!skb) {
   wcn36xx_err("failed to alloc probereq skb\n");
   goto out;
  }

  wcn36xx_smd_update_proberesp_tmpl(wcn, vif, skb);
  dev_kfree_skb(skb);
 }

 if (changed & BSS_CHANGED_BEACON_ENABLED ||
     changed & BSS_CHANGED_BEACON) {
  wcn36xx_dbg(WCN36XX_DBG_MAC,
       "mac bss changed beacon enabled %d\n",
       bss_conf->enable_beacon);

  if (bss_conf->enable_beacon) {
   vif_priv->dtim_period = bss_conf->dtim_period;
   vif_priv->bss_index = WCN36XX_HAL_BSS_INVALID_IDX;
   wcn36xx_smd_config_bss(wcn, vif, ((void*)0),
            vif->addr, 0);
   skb = ieee80211_beacon_get_tim(hw, vif, &tim_off,
             &tim_len);
   if (!skb) {
    wcn36xx_err("failed to alloc beacon skb\n");
    goto out;
   }
   wcn36xx_smd_send_beacon(wcn, vif, skb, tim_off, 0);
   dev_kfree_skb(skb);

   if (vif->type == NL80211_IFTYPE_ADHOC ||
       vif->type == NL80211_IFTYPE_MESH_POINT)
    link_state = WCN36XX_HAL_LINK_IBSS_STATE;
   else
    link_state = WCN36XX_HAL_LINK_AP_STATE;

   wcn36xx_smd_set_link_st(wcn, vif->addr, vif->addr,
      link_state);
  } else {
   wcn36xx_smd_delete_bss(wcn, vif);
   wcn36xx_smd_set_link_st(wcn, vif->addr, vif->addr,
      WCN36XX_HAL_LINK_IDLE_STATE);
  }
 }
out:

 mutex_unlock(&wcn->conf_mutex);

 return;
}
