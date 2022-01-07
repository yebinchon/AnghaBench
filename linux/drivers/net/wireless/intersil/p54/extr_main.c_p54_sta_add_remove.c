
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54_common {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {struct p54_common* priv; } ;


 int p54_sta_unlock (struct p54_common*,int ) ;

__attribute__((used)) static int p54_sta_add_remove(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif,
         struct ieee80211_sta *sta)
{
 struct p54_common *priv = hw->priv;






 p54_sta_unlock(priv, sta->addr);

 return 0;
}
