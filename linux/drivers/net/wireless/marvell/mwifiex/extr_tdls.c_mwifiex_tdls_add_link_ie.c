
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee_types_header {int dummy; } ;
struct ieee80211_tdls_lnkie {int ie_len; int resp_sta; int init_sta; int bssid; int ie_type; } ;


 int ETH_ALEN ;
 int WLAN_EID_LINK_ID ;
 int memcpy (int ,int const*,int ) ;
 struct ieee80211_tdls_lnkie* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
mwifiex_tdls_add_link_ie(struct sk_buff *skb, const u8 *src_addr,
    const u8 *peer, const u8 *bssid)
{
 struct ieee80211_tdls_lnkie *lnkid;

 lnkid = skb_put(skb, sizeof(struct ieee80211_tdls_lnkie));
 lnkid->ie_type = WLAN_EID_LINK_ID;
 lnkid->ie_len = sizeof(struct ieee80211_tdls_lnkie) -
   sizeof(struct ieee_types_header);

 memcpy(lnkid->bssid, bssid, ETH_ALEN);
 memcpy(lnkid->init_sta, src_addr, ETH_ALEN);
 memcpy(lnkid->resp_sta, peer, ETH_ALEN);
}
