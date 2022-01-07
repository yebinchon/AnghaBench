
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_htc_priv {int mutex; TYPE_1__* ah; } ;
typedef int s16 ;
struct TYPE_2__ {int coverage_class; } ;


 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_hw_init_global_settings (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath9k_htc_set_coverage_class(struct ieee80211_hw *hw,
      s16 coverage_class)
{
 struct ath9k_htc_priv *priv = hw->priv;

 mutex_lock(&priv->mutex);
 ath9k_htc_ps_wakeup(priv);
 priv->ah->coverage_class = coverage_class;
 ath9k_hw_init_global_settings(priv->ah);
 ath9k_htc_ps_restore(priv);
 mutex_unlock(&priv->mutex);
}
