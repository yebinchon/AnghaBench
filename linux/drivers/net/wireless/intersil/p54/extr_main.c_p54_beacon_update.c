
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct p54_common {scalar_t__ tsf_low32; scalar_t__ tsf_high32; int hw; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_control {int dummy; } ;


 int ENOMEM ;
 struct sk_buff* ieee80211_beacon_get (int ,struct ieee80211_vif*) ;
 int p54_beacon_format_ie_tim (struct sk_buff*) ;
 int p54_tx_80211 (int ,struct ieee80211_tx_control*,struct sk_buff*) ;

__attribute__((used)) static int p54_beacon_update(struct p54_common *priv,
   struct ieee80211_vif *vif)
{
 struct ieee80211_tx_control control = { };
 struct sk_buff *beacon;
 int ret;

 beacon = ieee80211_beacon_get(priv->hw, vif);
 if (!beacon)
  return -ENOMEM;
 ret = p54_beacon_format_ie_tim(beacon);
 if (ret)
  return ret;
 p54_tx_80211(priv->hw, &control, beacon);
 priv->tsf_high32 = 0;
 priv->tsf_low32 = 0;

 return 0;
}
