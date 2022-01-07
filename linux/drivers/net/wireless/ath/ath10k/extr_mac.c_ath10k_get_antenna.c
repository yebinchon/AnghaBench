
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k {int conf_mutex; int cfg_rx_chainmask; int cfg_tx_chainmask; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath10k_get_antenna(struct ieee80211_hw *hw, u32 *tx_ant, u32 *rx_ant)
{
 struct ath10k *ar = hw->priv;

 mutex_lock(&ar->conf_mutex);

 *tx_ant = ar->cfg_tx_chainmask;
 *rx_ant = ar->cfg_rx_chainmask;

 mutex_unlock(&ar->conf_mutex);

 return 0;
}
