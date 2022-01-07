
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int * vif; } ;


 int ar5523_dbg (struct ar5523*,char*) ;

__attribute__((used)) static void ar5523_remove_interface(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif)
{
 struct ar5523 *ar = hw->priv;

 ar5523_dbg(ar, "remove interface called\n");
 ar->vif = ((void*)0);
}
