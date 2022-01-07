
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_private {int adapter; } ;
struct mwifiex_bssdescriptor {size_t beacon_buf_size; int cap_info_bitmap; int disable_11ac; int sensed_11h; int bss_mode; int privacy; int fw_tsf; int bss_band; int beacon_period; int * beacon_buf; int rssi; int mac_address; int timestamp; } ;
struct mwifiex_bss_priv {int fw_tsf; int band; } ;
struct cfg80211_bss_ies {size_t len; int tsf; int data; } ;
struct cfg80211_bss {int capability; int beacon_interval; int signal; int bssid; int ies; scalar_t__ priv; } ;


 int ENOMEM ;
 int ERROR ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int INFO ;
 int MWIFIEX_802_11_PRIV_FILTER_8021X_WEP ;
 int MWIFIEX_802_11_PRIV_FILTER_ACCEPT_ALL ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_STATION ;
 int WLAN_CAPABILITY_IBSS ;
 int WLAN_CAPABILITY_PRIVACY ;
 int WLAN_CAPABILITY_SPECTRUM_MGMT ;
 int * kmemdup (int ,size_t,int ) ;
 int memcpy (int ,int ,int ) ;
 int mwifiex_dbg (int ,int ,char*) ;
 int mwifiex_update_bss_desc_with_ie (int ,struct mwifiex_bssdescriptor*) ;
 struct cfg80211_bss_ies* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int mwifiex_fill_new_bss_desc(struct mwifiex_private *priv,
         struct cfg80211_bss *bss,
         struct mwifiex_bssdescriptor *bss_desc)
{
 u8 *beacon_ie;
 size_t beacon_ie_len;
 struct mwifiex_bss_priv *bss_priv = (void *)bss->priv;
 const struct cfg80211_bss_ies *ies;

 rcu_read_lock();
 ies = rcu_dereference(bss->ies);
 beacon_ie = kmemdup(ies->data, ies->len, GFP_ATOMIC);
 beacon_ie_len = ies->len;
 bss_desc->timestamp = ies->tsf;
 rcu_read_unlock();

 if (!beacon_ie) {
  mwifiex_dbg(priv->adapter, ERROR,
       " failed to alloc beacon_ie\n");
  return -ENOMEM;
 }

 memcpy(bss_desc->mac_address, bss->bssid, ETH_ALEN);
 bss_desc->rssi = bss->signal;

 bss_desc->beacon_buf = beacon_ie;
 bss_desc->beacon_buf_size = beacon_ie_len;
 bss_desc->beacon_period = bss->beacon_interval;
 bss_desc->cap_info_bitmap = bss->capability;
 bss_desc->bss_band = bss_priv->band;
 bss_desc->fw_tsf = bss_priv->fw_tsf;
 if (bss_desc->cap_info_bitmap & WLAN_CAPABILITY_PRIVACY) {
  mwifiex_dbg(priv->adapter, INFO,
       "info: InterpretIE: AP WEP enabled\n");
  bss_desc->privacy = MWIFIEX_802_11_PRIV_FILTER_8021X_WEP;
 } else {
  bss_desc->privacy = MWIFIEX_802_11_PRIV_FILTER_ACCEPT_ALL;
 }
 if (bss_desc->cap_info_bitmap & WLAN_CAPABILITY_IBSS)
  bss_desc->bss_mode = NL80211_IFTYPE_ADHOC;
 else
  bss_desc->bss_mode = NL80211_IFTYPE_STATION;




 bss_desc->disable_11ac = 1;

 if (bss_desc->cap_info_bitmap & WLAN_CAPABILITY_SPECTRUM_MGMT)
  bss_desc->sensed_11h = 1;

 return mwifiex_update_bss_desc_with_ie(priv->adapter, bss_desc);
}
