
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct p54_common {int basic_rate_mask; int fw_var; int wakeup_timer; int conf_mutex; scalar_t__ aid; int use_short_slot; int bssid; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct TYPE_6__ {TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_3__ conf; struct p54_common* priv; } ;
struct ieee80211_bss_conf {int basic_rates; int beacon_int; int dtim_period; scalar_t__ aid; scalar_t__ assoc; int use_short_slot; int bssid; } ;
struct TYPE_4__ {scalar_t__ band; } ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_ERP_SLOT ;
 int ETH_ALEN ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int P54_SCAN_EXIT ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p54_beacon_update (struct p54_common*,struct ieee80211_vif*) ;
 int p54_scan (struct p54_common*,int ,int ) ;
 int p54_set_edcf (struct p54_common*) ;
 int p54_setup_mac (struct p54_common*) ;

__attribute__((used)) static void p54_bss_info_changed(struct ieee80211_hw *dev,
     struct ieee80211_vif *vif,
     struct ieee80211_bss_conf *info,
     u32 changed)
{
 struct p54_common *priv = dev->priv;

 mutex_lock(&priv->conf_mutex);
 if (changed & BSS_CHANGED_BSSID) {
  memcpy(priv->bssid, info->bssid, ETH_ALEN);
  p54_setup_mac(priv);
 }

 if (changed & BSS_CHANGED_BEACON) {
  p54_scan(priv, P54_SCAN_EXIT, 0);
  p54_setup_mac(priv);
  p54_beacon_update(priv, vif);
  p54_set_edcf(priv);
 }

 if (changed & (BSS_CHANGED_ERP_SLOT | BSS_CHANGED_BEACON)) {
  priv->use_short_slot = info->use_short_slot;
  p54_set_edcf(priv);
 }
 if (changed & BSS_CHANGED_BASIC_RATES) {
  if (dev->conf.chandef.chan->band == NL80211_BAND_5GHZ)
   priv->basic_rate_mask = (info->basic_rates << 4);
  else
   priv->basic_rate_mask = info->basic_rates;
  p54_setup_mac(priv);
  if (priv->fw_var >= 0x500)
   p54_scan(priv, P54_SCAN_EXIT, 0);
 }
 if (changed & BSS_CHANGED_ASSOC) {
  if (info->assoc) {
   priv->aid = info->aid;
   priv->wakeup_timer = info->beacon_int *
          info->dtim_period * 5;
   p54_setup_mac(priv);
  } else {
   priv->wakeup_timer = 500;
   priv->aid = 0;
  }
 }

 mutex_unlock(&priv->conf_mutex);
}
