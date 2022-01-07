
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54s_priv {scalar_t__ fw_state; int work; int mutex; int tx_lock; int tx_pending; } ;
struct ieee80211_hw {struct p54s_priv* priv; } ;


 scalar_t__ FW_STATE_OFF ;
 scalar_t__ FW_STATE_READY ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int cancel_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p54spi_power_off (struct p54s_priv*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void p54spi_op_stop(struct ieee80211_hw *dev)
{
 struct p54s_priv *priv = dev->priv;
 unsigned long flags;

 mutex_lock(&priv->mutex);
 WARN_ON(priv->fw_state != FW_STATE_READY);

 p54spi_power_off(priv);
 spin_lock_irqsave(&priv->tx_lock, flags);
 INIT_LIST_HEAD(&priv->tx_pending);
 spin_unlock_irqrestore(&priv->tx_lock, flags);

 priv->fw_state = FW_STATE_OFF;
 mutex_unlock(&priv->mutex);

 cancel_work_sync(&priv->work);
}
