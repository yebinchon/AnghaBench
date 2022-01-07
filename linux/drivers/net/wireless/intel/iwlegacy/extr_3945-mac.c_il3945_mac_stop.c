
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rfkill_poll; } ;
struct il_priv {TYPE_1__ _3945; int workqueue; scalar_t__ is_open; } ;
struct ieee80211_hw {struct il_priv* priv; } ;


 int D_MAC80211 (char*) ;
 int HZ ;
 int flush_workqueue (int ) ;
 int il3945_down (struct il_priv*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int round_jiffies_relative (int) ;

__attribute__((used)) static void
il3945_mac_stop(struct ieee80211_hw *hw)
{
 struct il_priv *il = hw->priv;

 D_MAC80211("enter\n");

 if (!il->is_open) {
  D_MAC80211("leave - skip\n");
  return;
 }

 il->is_open = 0;

 il3945_down(il);

 flush_workqueue(il->workqueue);


 queue_delayed_work(il->workqueue, &il->_3945.rfkill_poll,
      round_jiffies_relative(2 * HZ));

 D_MAC80211("leave\n");
}
