
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int type; } ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {struct ieee80211_vif* vif; } ;


 int EOPNOTSUPP ;

 int ar5523_dbg (struct ar5523*,char*) ;

__attribute__((used)) static int ar5523_add_interface(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif)
{
 struct ar5523 *ar = hw->priv;

 ar5523_dbg(ar, "add interface called\n");

 if (ar->vif) {
  ar5523_dbg(ar, "invalid add_interface\n");
  return -EOPNOTSUPP;
 }

 switch (vif->type) {
 case 128:
  ar->vif = vif;
  break;
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
