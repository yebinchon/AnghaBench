
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int tx_failed; int tx_lock; } ;
struct ath9k_htc_priv {TYPE_1__ tx; } ;


 int ATH9K_HTC_OP_TX_DRAIN ;
 int ath9k_htc_tx_drainq (struct ath9k_htc_priv*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ath9k_tx_failed_tasklet(unsigned long data)
{
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *)data;

 spin_lock(&priv->tx.tx_lock);
 if (priv->tx.flags & ATH9K_HTC_OP_TX_DRAIN) {
  spin_unlock(&priv->tx.tx_lock);
  return;
 }
 spin_unlock(&priv->tx.tx_lock);

 ath9k_htc_tx_drainq(priv, &priv->tx.tx_failed);
}
