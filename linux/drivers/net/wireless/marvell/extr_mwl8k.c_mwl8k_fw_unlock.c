
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_priv {int fw_mutex; int * fw_mutex_owner; int hw_restart_in_progress; int fw_mutex_depth; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 int ieee80211_wake_queues (struct ieee80211_hw*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mwl8k_fw_unlock(struct ieee80211_hw *hw)
{
 struct mwl8k_priv *priv = hw->priv;

 if (!--priv->fw_mutex_depth) {
  if (!priv->hw_restart_in_progress)
   ieee80211_wake_queues(hw);

  priv->fw_mutex_owner = ((void*)0);
  mutex_unlock(&priv->fw_mutex);
 }
}
