
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int dummy; } ;


 int ar5523_dbg (struct ar5523*,char*) ;
 int ar5523_flush_tx (struct ar5523*) ;

__attribute__((used)) static void ar5523_flush(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
    u32 queues, bool drop)
{
 struct ar5523 *ar = hw->priv;

 ar5523_dbg(ar, "flush called\n");
 ar5523_flush_tx(ar);
}
