
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int workqueue; scalar_t__ is_open; } ;
struct ieee80211_hw {struct il_priv* priv; } ;


 int CSR_INT ;
 int D_MAC80211 (char*) ;
 int _il_wr (struct il_priv*,int ,int) ;
 int flush_workqueue (int ) ;
 int il4965_down (struct il_priv*) ;
 int il_enable_rfkill_int (struct il_priv*) ;

void
il4965_mac_stop(struct ieee80211_hw *hw)
{
 struct il_priv *il = hw->priv;

 D_MAC80211("enter\n");

 if (!il->is_open)
  return;

 il->is_open = 0;

 il4965_down(il);

 flush_workqueue(il->workqueue);



 _il_wr(il, CSR_INT, 0xFFFFFFFF);
 il_enable_rfkill_int(il);

 D_MAC80211("leave\n");
}
