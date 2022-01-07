
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_htc_priv {scalar_t__ ps_usecount; int htc_pm_lock; int ah; scalar_t__ ps_enabled; scalar_t__ ps_idle; } ;


 int ATH9K_PM_FULL_SLEEP ;
 int ATH9K_PM_NETWORK_SLEEP ;
 int ath9k_hw_setpower (int ,int ) ;
 int ath9k_hw_setrxabort (int ,int) ;
 int ath9k_hw_stopdmarecv (int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ath9k_htc_ps_restore(struct ath9k_htc_priv *priv)
{
 bool reset;

 mutex_lock(&priv->htc_pm_lock);
 if (--priv->ps_usecount != 0)
  goto unlock;

 if (priv->ps_idle) {
  ath9k_hw_setrxabort(priv->ah, 1);
  ath9k_hw_stopdmarecv(priv->ah, &reset);
  ath9k_hw_setpower(priv->ah, ATH9K_PM_FULL_SLEEP);
 } else if (priv->ps_enabled) {
  ath9k_hw_setpower(priv->ah, ATH9K_PM_NETWORK_SLEEP);
 }

unlock:
 mutex_unlock(&priv->htc_pm_lock);
}
