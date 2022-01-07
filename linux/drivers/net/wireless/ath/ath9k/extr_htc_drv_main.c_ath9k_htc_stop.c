
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_hw {scalar_t__ is_monitoring; } ;
struct ath_common {int op_flags; } ;
struct TYPE_2__ {int cleanup_timer; } ;
struct ath9k_htc_priv {int mutex; struct ath_hw* ah; int led_work; int ps_work; int fatal_work; TYPE_1__ tx; int rx_tasklet; } ;


 int ANY ;
 int ATH9K_PM_FULL_SLEEP ;
 int ATH_OP_INVALID ;
 int CONFIG ;
 int WMI_CMD (int ) ;
 int WMI_DISABLE_INTR_CMDID ;
 int WMI_DRAIN_TXQ_ALL_CMDID ;
 int WMI_STOP_RECV_CMDID ;
 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_htc_remove_monitor_interface (struct ath9k_htc_priv*) ;
 int ath9k_htc_setpower (struct ath9k_htc_priv*,int ) ;
 int ath9k_htc_stop_ani (struct ath9k_htc_priv*) ;
 int ath9k_htc_stop_btcoex (struct ath9k_htc_priv*) ;
 int ath9k_htc_tx_drain (struct ath9k_htc_priv*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_disable (struct ath_hw*) ;
 int ath9k_hw_phy_disable (struct ath_hw*) ;
 int ath9k_wmi_event_drain (struct ath9k_htc_priv*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int tasklet_kill (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ath9k_htc_stop(struct ieee80211_hw *hw)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath_hw *ah = priv->ah;
 struct ath_common *common = ath9k_hw_common(ah);
 int ret __attribute__ ((unused));
 u8 cmd_rsp;

 mutex_lock(&priv->mutex);

 if (test_bit(ATH_OP_INVALID, &common->op_flags)) {
  ath_dbg(common, ANY, "Device not present\n");
  mutex_unlock(&priv->mutex);
  return;
 }

 ath9k_htc_ps_wakeup(priv);

 WMI_CMD(WMI_DISABLE_INTR_CMDID);
 WMI_CMD(WMI_DRAIN_TXQ_ALL_CMDID);
 WMI_CMD(WMI_STOP_RECV_CMDID);

 tasklet_kill(&priv->rx_tasklet);

 del_timer_sync(&priv->tx.cleanup_timer);
 ath9k_htc_tx_drain(priv);
 ath9k_wmi_event_drain(priv);

 mutex_unlock(&priv->mutex);


 cancel_work_sync(&priv->fatal_work);
 cancel_work_sync(&priv->ps_work);




 ath9k_htc_stop_ani(priv);

 mutex_lock(&priv->mutex);

 ath9k_htc_stop_btcoex(priv);


 if (priv->ah->is_monitoring)
  ath9k_htc_remove_monitor_interface(priv);

 ath9k_hw_phy_disable(ah);
 ath9k_hw_disable(ah);
 ath9k_htc_ps_restore(priv);
 ath9k_htc_setpower(priv, ATH9K_PM_FULL_SLEEP);

 set_bit(ATH_OP_INVALID, &common->op_flags);

 ath_dbg(common, CONFIG, "Driver halt\n");
 mutex_unlock(&priv->mutex);
}
