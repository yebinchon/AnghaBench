
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {struct ieee80211_channel* chan; } ;
struct TYPE_4__ {TYPE_3__ chandef; } ;
struct ieee80211_hw {TYPE_1__ conf; struct ath9k_htc_priv* priv; } ;
struct ieee80211_channel {int center_freq; } ;
struct ath_hw {int caldata; } ;
struct ath_common {int op_flags; } ;
struct TYPE_5__ {int cleanup_timer; int tx_lock; int flags; } ;
struct ath9k_htc_priv {int mutex; TYPE_2__ tx; int htc; int curtxpow; int txpowlimit; struct ath_hw* ah; } ;
struct ath9k_channel {int dummy; } ;
typedef enum htc_phymode { ____Placeholder_htc_phymode } htc_phymode ;
typedef int __be16 ;


 int ATH9K_HTC_OP_TX_QUEUES_STOP ;
 int ATH9K_HTC_TX_CLEANUP_INTERVAL ;
 int ATH9K_PM_AWAKE ;
 int ATH_OP_INVALID ;
 int CONFIG ;
 int WMI_ATH_INIT_CMDID ;
 int WMI_CMD (int ) ;
 int WMI_CMD_BUF (int ,int *) ;
 int WMI_FLUSH_RECV_CMDID ;
 int WMI_SET_MODE_CMDID ;
 int WMI_START_RECV_CMDID ;
 struct ath9k_channel* ath9k_cmn_get_channel (struct ieee80211_hw*,struct ath_hw*,TYPE_3__*) ;
 int ath9k_cmn_update_txpow (struct ath_hw*,int ,int ,int *) ;
 int ath9k_host_rx_init (struct ath9k_htc_priv*) ;
 int ath9k_htc_get_curmode (struct ath9k_htc_priv*,struct ath9k_channel*) ;
 int ath9k_htc_setpower (struct ath9k_htc_priv*,int ) ;
 int ath9k_htc_start_btcoex (struct ath9k_htc_priv*) ;
 int ath9k_htc_update_cap_target (struct ath9k_htc_priv*,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_reset (struct ath_hw*,struct ath9k_channel*,int ,int) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int ath_err (struct ath_common*,char*,int,int ) ;
 int clear_bit (int ,int *) ;
 int cpu_to_be16 (int) ;
 int htc_start (int ) ;
 int ieee80211_wake_queues (struct ieee80211_hw*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath9k_htc_start(struct ieee80211_hw *hw)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath_hw *ah = priv->ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ieee80211_channel *curchan = hw->conf.chandef.chan;
 struct ath9k_channel *init_channel;
 int ret = 0;
 enum htc_phymode mode;
 __be16 htc_mode;
 u8 cmd_rsp;

 mutex_lock(&priv->mutex);

 ath_dbg(common, CONFIG,
  "Starting driver with initial channel: %d MHz\n",
  curchan->center_freq);


 ath9k_htc_setpower(priv, ATH9K_PM_AWAKE);
 WMI_CMD(WMI_FLUSH_RECV_CMDID);


 init_channel = ath9k_cmn_get_channel(hw, ah, &hw->conf.chandef);

 ret = ath9k_hw_reset(ah, init_channel, ah->caldata, 0);
 if (ret) {
  ath_err(common,
   "Unable to reset hardware; reset status %d (freq %u MHz)\n",
   ret, curchan->center_freq);
  mutex_unlock(&priv->mutex);
  return ret;
 }

 ath9k_cmn_update_txpow(ah, priv->curtxpow, priv->txpowlimit,
          &priv->curtxpow);

 mode = ath9k_htc_get_curmode(priv, init_channel);
 htc_mode = cpu_to_be16(mode);
 WMI_CMD_BUF(WMI_SET_MODE_CMDID, &htc_mode);
 WMI_CMD(WMI_ATH_INIT_CMDID);
 WMI_CMD(WMI_START_RECV_CMDID);

 ath9k_host_rx_init(priv);

 ret = ath9k_htc_update_cap_target(priv, 0);
 if (ret)
  ath_dbg(common, CONFIG,
   "Failed to update capability in target\n");

 clear_bit(ATH_OP_INVALID, &common->op_flags);
 htc_start(priv->htc);

 spin_lock_bh(&priv->tx.tx_lock);
 priv->tx.flags &= ~ATH9K_HTC_OP_TX_QUEUES_STOP;
 spin_unlock_bh(&priv->tx.tx_lock);

 ieee80211_wake_queues(hw);

 mod_timer(&priv->tx.cleanup_timer,
    jiffies + msecs_to_jiffies(ATH9K_HTC_TX_CLEANUP_INTERVAL));

 ath9k_htc_start_btcoex(priv);

 mutex_unlock(&priv->mutex);

 return ret;
}
