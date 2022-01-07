
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {struct ieee80211_channel* chan; } ;
struct TYPE_10__ {int flags; TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_4__ conf; } ;
struct ieee80211_conf {int dummy; } ;
struct ieee80211_channel {int center_freq; } ;
struct ath_hw {TYPE_3__* curchan; } ;
struct ath_common {int op_flags; TYPE_1__* hw; } ;
struct ath9k_hw_cal_data {int dummy; } ;
struct TYPE_12__ {scalar_t__ spectral_mode; } ;
struct TYPE_11__ {int cleanup_timer; } ;
struct ath9k_htc_priv {TYPE_6__ spec_priv; TYPE_5__ tx; int htc; int curtxpow; int txpowlimit; struct ath9k_hw_cal_data caldata; struct ath_hw* ah; } ;
struct ath9k_channel {int dummy; } ;
typedef enum htc_phymode { ____Placeholder_htc_phymode } htc_phymode ;
typedef int __be16 ;
struct TYPE_9__ {int channel; } ;
struct TYPE_7__ {struct ieee80211_conf conf; } ;


 int ATH9K_HTC_TX_CLEANUP_INTERVAL ;
 int ATH_OP_INVALID ;
 int ATH_OP_SCANNING ;
 int CONFIG ;
 int EIO ;
 int IEEE80211_CONF_OFFCHANNEL ;
 scalar_t__ SPECTRAL_CHANSCAN ;
 int WMI_CMD (int ) ;
 int WMI_CMD_BUF (int ,int *) ;
 int WMI_DISABLE_INTR_CMDID ;
 int WMI_DRAIN_TXQ_ALL_CMDID ;
 int WMI_ENABLE_INTR_CMDID ;
 int WMI_SET_MODE_CMDID ;
 int WMI_START_RECV_CMDID ;
 int WMI_STOP_RECV_CMDID ;
 int ath9k_cmn_spectral_scan_trigger (struct ath_common*,TYPE_6__*) ;
 int ath9k_cmn_update_txpow (struct ath_hw*,int ,int ,int *) ;
 int ath9k_host_rx_init (struct ath9k_htc_priv*) ;
 int ath9k_htc_get_curmode (struct ath9k_htc_priv*,struct ath9k_channel*) ;
 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_htc_stop_ani (struct ath9k_htc_priv*) ;
 int ath9k_htc_tx_drain (struct ath9k_htc_priv*) ;
 int ath9k_htc_vif_reconfig (struct ath9k_htc_priv*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_reset (struct ath_hw*,struct ath9k_channel*,struct ath9k_hw_cal_data*,int) ;
 int ath9k_wmi_event_drain (struct ath9k_htc_priv*) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ,int ,int ,int) ;
 int ath_err (struct ath_common*,char*,int ,int) ;
 int conf_is_ht (struct ieee80211_conf*) ;
 int conf_is_ht40 (struct ieee80211_conf*) ;
 int cpu_to_be16 (int) ;
 int del_timer_sync (int *) ;
 int htc_start (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ath9k_htc_set_channel(struct ath9k_htc_priv *priv,
     struct ieee80211_hw *hw,
     struct ath9k_channel *hchan)
{
 struct ath_hw *ah = priv->ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ieee80211_conf *conf = &common->hw->conf;
 bool fastcc;
 struct ieee80211_channel *channel = hw->conf.chandef.chan;
 struct ath9k_hw_cal_data *caldata;
 enum htc_phymode mode;
 __be16 htc_mode;
 u8 cmd_rsp;
 int ret;

 if (test_bit(ATH_OP_INVALID, &common->op_flags))
  return -EIO;

 fastcc = !!(hw->conf.flags & IEEE80211_CONF_OFFCHANNEL);

 ath9k_htc_ps_wakeup(priv);

 ath9k_htc_stop_ani(priv);
 del_timer_sync(&priv->tx.cleanup_timer);
 ath9k_htc_tx_drain(priv);

 WMI_CMD(WMI_DISABLE_INTR_CMDID);
 WMI_CMD(WMI_DRAIN_TXQ_ALL_CMDID);
 WMI_CMD(WMI_STOP_RECV_CMDID);

 ath9k_wmi_event_drain(priv);

 ath_dbg(common, CONFIG,
  "(%u MHz) -> (%u MHz), HT: %d, HT40: %d fastcc: %d\n",
  priv->ah->curchan->channel,
  channel->center_freq, conf_is_ht(conf), conf_is_ht40(conf),
  fastcc);
 caldata = fastcc ? ((void*)0) : &priv->caldata;
 ret = ath9k_hw_reset(ah, hchan, caldata, fastcc);
 if (ret) {
  ath_err(common,
   "Unable to reset channel (%u Mhz) reset status %d\n",
   channel->center_freq, ret);
  goto err;
 }

 ath9k_cmn_update_txpow(ah, priv->curtxpow, priv->txpowlimit,
          &priv->curtxpow);

 WMI_CMD(WMI_START_RECV_CMDID);
 if (ret)
  goto err;

 ath9k_host_rx_init(priv);

 mode = ath9k_htc_get_curmode(priv, hchan);
 htc_mode = cpu_to_be16(mode);
 WMI_CMD_BUF(WMI_SET_MODE_CMDID, &htc_mode);
 if (ret)
  goto err;

 WMI_CMD(WMI_ENABLE_INTR_CMDID);
 if (ret)
  goto err;

 htc_start(priv->htc);

 if (!test_bit(ATH_OP_SCANNING, &common->op_flags) &&
     !(hw->conf.flags & IEEE80211_CONF_OFFCHANNEL))
  ath9k_htc_vif_reconfig(priv);

 mod_timer(&priv->tx.cleanup_timer,
    jiffies + msecs_to_jiffies(ATH9K_HTC_TX_CLEANUP_INTERVAL));


 if (test_bit(ATH_OP_SCANNING, &common->op_flags) &&
       priv->spec_priv.spectral_mode == SPECTRAL_CHANSCAN)
  ath9k_cmn_spectral_scan_trigger(common, &priv->spec_priv);
err:
 ath9k_htc_ps_restore(priv);
 return ret;
}
