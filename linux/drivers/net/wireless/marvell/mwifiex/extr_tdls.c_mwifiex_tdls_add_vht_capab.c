
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vht_cap ;
typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int band; } ;
struct mwifiex_private {TYPE_1__ curr_bss_params; } ;
struct ieee80211_vht_cap {int dummy; } ;


 int WLAN_EID_VHT_CAPABILITY ;
 int memcpy (int *,struct ieee80211_vht_cap*,int) ;
 int memset (struct ieee80211_vht_cap*,int ,int) ;
 int mwifiex_fill_vht_cap_tlv (struct mwifiex_private*,struct ieee80211_vht_cap*,int ) ;
 int * skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int mwifiex_tdls_add_vht_capab(struct mwifiex_private *priv,
          struct sk_buff *skb)
{
 struct ieee80211_vht_cap vht_cap;
 u8 *pos;

 pos = skb_put(skb, sizeof(struct ieee80211_vht_cap) + 2);
 *pos++ = WLAN_EID_VHT_CAPABILITY;
 *pos++ = sizeof(struct ieee80211_vht_cap);

 memset(&vht_cap, 0, sizeof(struct ieee80211_vht_cap));

 mwifiex_fill_vht_cap_tlv(priv, &vht_cap, priv->curr_bss_params.band);
 memcpy(pos, &vht_cap, sizeof(vht_cap));

 return 0;
}
