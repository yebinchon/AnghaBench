
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct p54_common {int powersave_override; int aid; int bssid; } ;
struct ieee80211_tim_ie {int dummy; } ;
struct ieee80211_hdr {int addr3; int frame_control; } ;


 int WLAN_EID_TIM ;
 int ether_addr_equal_64bits (int ,int ) ;
 int ieee80211_check_tim (struct ieee80211_tim_ie*,int ,int ) ;
 int ieee80211_is_beacon (int ) ;
 int * p54_find_ie (struct sk_buff*,int ) ;
 int p54_set_ps (struct p54_common*) ;

__attribute__((used)) static void p54_pspoll_workaround(struct p54_common *priv, struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (void *) skb->data;
 struct ieee80211_tim_ie *tim_ie;
 u8 *tim;
 u8 tim_len;
 bool new_psm;


 if (!ieee80211_is_beacon(hdr->frame_control))
  return;

 if (!priv->aid)
  return;


 if (!ether_addr_equal_64bits(hdr->addr3, priv->bssid))
  return;

 tim = p54_find_ie(skb, WLAN_EID_TIM);
 if (!tim)
  return;

 tim_len = tim[1];
 tim_ie = (struct ieee80211_tim_ie *) &tim[2];

 new_psm = ieee80211_check_tim(tim_ie, tim_len, priv->aid);
 if (new_psm != priv->powersave_override) {
  priv->powersave_override = new_psm;
  p54_set_ps(priv);
 }
}
