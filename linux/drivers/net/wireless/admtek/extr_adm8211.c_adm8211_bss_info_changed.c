
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct ieee80211_bss_conf {int bssid; } ;
struct adm8211_priv {int bssid; } ;


 int BSS_CHANGED_BSSID ;
 int ETH_ALEN ;
 int adm8211_set_bssid (struct ieee80211_hw*,int ) ;
 int ether_addr_equal (int ,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void adm8211_bss_info_changed(struct ieee80211_hw *dev,
         struct ieee80211_vif *vif,
         struct ieee80211_bss_conf *conf,
         u32 changes)
{
 struct adm8211_priv *priv = dev->priv;

 if (!(changes & BSS_CHANGED_BSSID))
  return;

 if (!ether_addr_equal(conf->bssid, priv->bssid)) {
  adm8211_set_bssid(dev, conf->bssid);
  memcpy(priv->bssid, conf->bssid, ETH_ALEN);
 }
}
