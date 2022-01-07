
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k {int conf_mutex; } ;


 int __ath10k_set_antenna (struct ath10k*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath10k_set_antenna(struct ieee80211_hw *hw, u32 tx_ant, u32 rx_ant)
{
 struct ath10k *ar = hw->priv;
 int ret;

 mutex_lock(&ar->conf_mutex);
 ret = __ath10k_set_antenna(ar, tx_ant, rx_ant);
 mutex_unlock(&ar->conf_mutex);
 return ret;
}
