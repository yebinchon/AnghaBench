
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filter_flags; } ;
struct il_priv {int mutex; TYPE_1__ staging; int lock; scalar_t__ timestamp; int * beacon_skb; int current_ht_config; } ;
struct il_ht_config {int dummy; } ;
struct ieee80211_vif {int addr; int type; } ;
struct ieee80211_hw {struct il_priv* priv; } ;


 int D_MAC80211 (char*,...) ;
 int RXON_FILTER_ASSOC_MSK ;
 int dev_kfree_skb (int *) ;
 int il_commit_rxon (struct il_priv*) ;
 int il_is_ready_rf (struct il_priv*) ;
 int il_scan_cancel_timeout (struct il_priv*,int) ;
 int il_set_rate (struct il_priv*) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
il_mac_reset_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct il_priv *il = hw->priv;
 unsigned long flags;

 mutex_lock(&il->mutex);
 D_MAC80211("enter: type %d, addr %pM\n", vif->type, vif->addr);

 spin_lock_irqsave(&il->lock, flags);

 memset(&il->current_ht_config, 0, sizeof(struct il_ht_config));


 if (il->beacon_skb)
  dev_kfree_skb(il->beacon_skb);
 il->beacon_skb = ((void*)0);
 il->timestamp = 0;

 spin_unlock_irqrestore(&il->lock, flags);

 il_scan_cancel_timeout(il, 100);
 if (!il_is_ready_rf(il)) {
  D_MAC80211("leave - not ready\n");
  mutex_unlock(&il->mutex);
  return;
 }


 il->staging.filter_flags &= ~RXON_FILTER_ASSOC_MSK;
 il_commit_rxon(il);

 il_set_rate(il);

 D_MAC80211("leave\n");
 mutex_unlock(&il->mutex);
}
