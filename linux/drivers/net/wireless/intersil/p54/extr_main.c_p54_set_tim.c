
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54_common {int dummy; } ;
struct ieee80211_sta {int aid; } ;
struct ieee80211_hw {struct p54_common* priv; } ;


 int p54_update_beacon_tim (struct p54_common*,int ,int) ;

__attribute__((used)) static int p54_set_tim(struct ieee80211_hw *dev, struct ieee80211_sta *sta,
   bool set)
{
 struct p54_common *priv = dev->priv;

 return p54_update_beacon_tim(priv, sta->aid, set);
}
