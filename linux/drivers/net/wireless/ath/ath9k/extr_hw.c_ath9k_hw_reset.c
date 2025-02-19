
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


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct timespec64 {int dummy; } ;
struct TYPE_12__ {int ext_channel; } ;
struct TYPE_9__ {int rimt_last; int rimt_first; int hw_hang_checks; scalar_t__ tx_intr_mitigation; scalar_t__ rx_intr_mitigation; } ;
struct TYPE_8__ {int hw_caps; } ;
struct ath_hw {int chip_fullsleep; int paprd_table_write_done; int htc_reset_init; TYPE_6__ radar_conf; TYPE_5__* hw; TYPE_3__ config; int rfkill_gpio; TYPE_2__ caps; int opmode; TYPE_1__* eep_ops; int noise; struct ath9k_hw_cal_data* caldata; scalar_t__ curchan; } ;
struct ath_common {scalar_t__ bt_ant_diversity; } ;
struct ath9k_hw_cal_data {scalar_t__ channel; scalar_t__ channelFlags; int cal_flags; } ;
struct ath9k_channel {scalar_t__ channel; scalar_t__ channelFlags; int noisefloor; } ;
struct TYPE_10__ {scalar_t__ radar_enabled; } ;
struct TYPE_11__ {TYPE_4__ conf; } ;
struct TYPE_7__ {int (* set_board_values ) (struct ath_hw*,struct ath9k_channel*) ;} ;


 scalar_t__ AR9271_GATE_MAC_CTL ;
 scalar_t__ AR9271_RADIO_RF_RST ;
 int AR9271_RESET_POWER_DOWN_CONTROL ;
 int AR_AHB_CUSTOM_BURST_ASYNC_FIFO_VAL ;
 int AR_AHB_CUSTOM_BURST_EN ;
 int AR_AHB_MODE ;
 int AR_BTCOEX_WL_LNADIV ;
 int AR_BTCOEX_WL_LNADIV_FORCE_ON ;
 int AR_CFG_LED ;
 scalar_t__ AR_CFG_LED_ASSOC_CTL ;
 scalar_t__ AR_CFG_LED_BLINK_SLOW ;
 scalar_t__ AR_CFG_LED_BLINK_THRESH_SEL ;
 scalar_t__ AR_CFG_LED_MODE_SEL ;
 scalar_t__ AR_CFG_SCLK_32KHZ ;
 int AR_DEF_ANTENNA ;
 int AR_GPIO_INPUT_EN_VAL ;
 int AR_GPIO_JTAG_DISABLE ;
 int AR_MAC_PCU_LOGIC_ANALYZER ;
 int AR_MAC_PCU_LOGIC_ANALYZER_DISBUG20768 ;
 int AR_OBS ;
 int AR_PCU_MISC_MODE2 ;
 int AR_PCU_MISC_MODE2_ENABLE_AGGWEP ;
 int AR_RIMT ;
 int AR_RIMT_FIRST ;
 int AR_RIMT_LAST ;
 scalar_t__ AR_SREV_9100 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9287 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9287_13_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 int AR_STA_ID1 ;
 scalar_t__ AR_STA_ID1_BASE_RATE_11B ;
 int AR_STA_ID1_PRESERVE_SEQNUM ;
 int AR_TIMT ;
 int AR_TIMT_FIRST ;
 int AR_TIMT_LAST ;
 int ATH9K_HW_CAP_RFSILENT ;
 int ATH9K_PM_AWAKE ;
 int EINVAL ;
 int EIO ;
 int ENABLE_REGWRITE_BUFFER (struct ath_hw*) ;
 int ENABLE_REG_RMW_BUFFER (struct ath_hw*) ;
 int HW_PHYRESTART_CLC_WAR ;
 int IS_CHAN_2GHZ (struct ath9k_channel*) ;
 int IS_CHAN_HT40 (struct ath9k_channel*) ;
 int PAPRD_PACKET_SENT ;
 int REGWRITE_BUFFER_FLUSH (struct ath_hw*) ;
 scalar_t__ REG_READ (struct ath_hw*,int ) ;
 int REG_RMW_BUFFER_FLUSH (struct ath_hw*) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int REG_WRITE (struct ath_hw*,int ,scalar_t__) ;
 int TXCLCAL_DONE ;
 int TXIQCAL_DONE ;
 int ar9002_hw_enable_async_fifo (struct ath_hw*) ;
 int ar9003_hw_bb_watchdog_config (struct ath_hw*) ;
 int ar9003_hw_disable_phy_restart (struct ath_hw*) ;
 int ar9003_mci_check_bt (struct ath_hw*) ;
 scalar_t__ ar9003_mci_end_reset (struct ath_hw*,struct ath9k_channel*,struct ath9k_hw_cal_data*) ;
 int ar9003_mci_reset (struct ath_hw*,int,int ,int) ;
 int ar9003_mci_start_reset (struct ath_hw*,struct ath9k_channel*) ;
 int ar9003_mci_stop_bt (struct ath_hw*,int) ;
 int ath9k_hw_ani_cache_ini_regs (struct ath_hw*) ;
 int ath9k_hw_apply_gpio_override (struct ath_hw*) ;
 int ath9k_hw_btcoex_enable (struct ath_hw*) ;
 scalar_t__ ath9k_hw_btcoex_is_enabled (struct ath_hw*) ;
 int ath9k_hw_chip_reset (struct ath_hw*,struct ath9k_channel*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_do_fastcc (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_gen_timer_start_tsf2 (struct ath_hw*) ;
 scalar_t__ ath9k_hw_get_tsf_offset (struct timespec64*,int *) ;
 int ath9k_hw_getchan_noise (struct ath_hw*,struct ath9k_channel*,int ) ;
 int ath9k_hw_getnf (struct ath_hw*,scalar_t__) ;
 scalar_t__ ath9k_hw_gettsf64 (struct ath_hw*) ;
 int ath9k_hw_gpio_request_in (struct ath_hw*,int ,char*) ;
 int ath9k_hw_init_bb (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_init_cal (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_init_desc (struct ath_hw*) ;
 int ath9k_hw_init_global_settings (struct ath_hw*) ;
 int ath9k_hw_init_interrupt_masks (struct ath_hw*,int ) ;
 int ath9k_hw_init_mfp (struct ath_hw*) ;
 int ath9k_hw_init_qos (struct ath_hw*) ;
 int ath9k_hw_init_queues (struct ath_hw*) ;
 int ath9k_hw_loadnf (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_mark_phy_inactive (struct ath_hw*) ;
 scalar_t__ ath9k_hw_mci_is_enabled (struct ath_hw*) ;
 int ath9k_hw_process_ini (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_reset_opmode (struct ath_hw*,scalar_t__,scalar_t__) ;
 int ath9k_hw_restore_chainmask (struct ath_hw*) ;
 int ath9k_hw_rf_set_freq (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_set_clockrate (struct ath_hw*) ;
 int ath9k_hw_set_delta_slope (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_set_dma (struct ath_hw*) ;
 int ath9k_hw_set_radar_params (struct ath_hw*) ;
 int ath9k_hw_set_rfmode (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_setpower (struct ath_hw*,int ) ;
 int ath9k_hw_settsf64 (struct ath_hw*,scalar_t__) ;
 int ath9k_hw_spur_mitigate_freq (struct ath_hw*,struct ath9k_channel*) ;
 int ath9k_hw_start_nfcal (struct ath_hw*,int) ;
 int ath9k_init_nfcal_hist_buffer (struct ath_hw*,struct ath9k_channel*) ;
 int ath_err (struct ath_common*,char*) ;
 int clear_bit (int ,int *) ;
 int ktime_get_raw_ts64 (struct timespec64*) ;
 int memset (struct ath9k_hw_cal_data*,int ,int) ;
 int stub1 (struct ath_hw*,struct ath9k_channel*) ;
 int udelay (int) ;

int ath9k_hw_reset(struct ath_hw *ah, struct ath9k_channel *chan,
     struct ath9k_hw_cal_data *caldata, bool fastcc)
{
 struct ath_common *common = ath9k_hw_common(ah);
 u32 saveLedState;
 u32 saveDefAntenna;
 u32 macStaId1;
 struct timespec64 tsf_ts;
 u32 tsf_offset;
 u64 tsf = 0;
 int r;
 bool start_mci_reset = 0;
 bool save_fullsleep = ah->chip_fullsleep;

 if (ath9k_hw_mci_is_enabled(ah)) {
  start_mci_reset = ar9003_mci_start_reset(ah, chan);
  if (start_mci_reset)
   return 0;
 }

 if (!ath9k_hw_setpower(ah, ATH9K_PM_AWAKE))
  return -EIO;

 if (ah->curchan && !ah->chip_fullsleep)
  ath9k_hw_getnf(ah, ah->curchan);

 ah->caldata = caldata;
 if (caldata && (chan->channel != caldata->channel ||
   chan->channelFlags != caldata->channelFlags)) {

  memset(caldata, 0, sizeof(*caldata));
  ath9k_init_nfcal_hist_buffer(ah, chan);
 } else if (caldata) {
  clear_bit(PAPRD_PACKET_SENT, &caldata->cal_flags);
 }
 ah->noise = ath9k_hw_getchan_noise(ah, chan, chan->noisefloor);

 if (fastcc) {
  r = ath9k_hw_do_fastcc(ah, chan);
  if (!r)
   return r;
 }

 if (ath9k_hw_mci_is_enabled(ah))
  ar9003_mci_stop_bt(ah, save_fullsleep);

 saveDefAntenna = REG_READ(ah, AR_DEF_ANTENNA);
 if (saveDefAntenna == 0)
  saveDefAntenna = 1;

 macStaId1 = REG_READ(ah, AR_STA_ID1) & AR_STA_ID1_BASE_RATE_11B;


 ktime_get_raw_ts64(&tsf_ts);
 tsf = ath9k_hw_gettsf64(ah);

 saveLedState = REG_READ(ah, AR_CFG_LED) &
  (AR_CFG_LED_ASSOC_CTL | AR_CFG_LED_MODE_SEL |
   AR_CFG_LED_BLINK_THRESH_SEL | AR_CFG_LED_BLINK_SLOW);

 ath9k_hw_mark_phy_inactive(ah);

 ah->paprd_table_write_done = 0;


 if (AR_SREV_9271(ah) && ah->htc_reset_init) {
  REG_WRITE(ah,
     AR9271_RESET_POWER_DOWN_CONTROL,
     AR9271_RADIO_RF_RST);
  udelay(50);
 }

 if (!ath9k_hw_chip_reset(ah, chan)) {
  ath_err(common, "Chip reset failed\n");
  return -EINVAL;
 }


 if (AR_SREV_9271(ah) && ah->htc_reset_init) {
  ah->htc_reset_init = 0;
  REG_WRITE(ah,
     AR9271_RESET_POWER_DOWN_CONTROL,
     AR9271_GATE_MAC_CTL);
  udelay(50);
 }


 tsf_offset = ath9k_hw_get_tsf_offset(&tsf_ts, ((void*)0));
 ath9k_hw_settsf64(ah, tsf + tsf_offset);

 if (AR_SREV_9280_20_OR_LATER(ah))
  REG_SET_BIT(ah, AR_GPIO_INPUT_EN_VAL, AR_GPIO_JTAG_DISABLE);

 if (!AR_SREV_9300_20_OR_LATER(ah))
  ar9002_hw_enable_async_fifo(ah);

 r = ath9k_hw_process_ini(ah, chan);
 if (r)
  return r;

 ath9k_hw_set_rfmode(ah, chan);

 if (ath9k_hw_mci_is_enabled(ah))
  ar9003_mci_reset(ah, 0, IS_CHAN_2GHZ(chan), save_fullsleep);






 if (AR_SREV_9100(ah) && (ath9k_hw_gettsf64(ah) < tsf)) {
  tsf_offset = ath9k_hw_get_tsf_offset(&tsf_ts, ((void*)0));
  ath9k_hw_settsf64(ah, tsf + tsf_offset);
 }

 ath9k_hw_init_mfp(ah);

 ath9k_hw_set_delta_slope(ah, chan);
 ath9k_hw_spur_mitigate_freq(ah, chan);
 ah->eep_ops->set_board_values(ah, chan);

 ath9k_hw_reset_opmode(ah, macStaId1, saveDefAntenna);

 r = ath9k_hw_rf_set_freq(ah, chan);
 if (r)
  return r;

 ath9k_hw_set_clockrate(ah);

 ath9k_hw_init_queues(ah);
 ath9k_hw_init_interrupt_masks(ah, ah->opmode);
 ath9k_hw_ani_cache_ini_regs(ah);
 ath9k_hw_init_qos(ah);

 if (ah->caps.hw_caps & ATH9K_HW_CAP_RFSILENT)
  ath9k_hw_gpio_request_in(ah, ah->rfkill_gpio, "ath9k-rfkill");

 ath9k_hw_init_global_settings(ah);

 if (AR_SREV_9287(ah) && AR_SREV_9287_13_OR_LATER(ah)) {
  REG_SET_BIT(ah, AR_MAC_PCU_LOGIC_ANALYZER,
       AR_MAC_PCU_LOGIC_ANALYZER_DISBUG20768);
  REG_RMW_FIELD(ah, AR_AHB_MODE, AR_AHB_CUSTOM_BURST_EN,
         AR_AHB_CUSTOM_BURST_ASYNC_FIFO_VAL);
  REG_SET_BIT(ah, AR_PCU_MISC_MODE2,
       AR_PCU_MISC_MODE2_ENABLE_AGGWEP);
 }

 REG_SET_BIT(ah, AR_STA_ID1, AR_STA_ID1_PRESERVE_SEQNUM);

 ath9k_hw_set_dma(ah);

 if (!ath9k_hw_mci_is_enabled(ah))
  REG_WRITE(ah, AR_OBS, 8);

 ENABLE_REG_RMW_BUFFER(ah);
 if (ah->config.rx_intr_mitigation) {
  REG_RMW_FIELD(ah, AR_RIMT, AR_RIMT_LAST, ah->config.rimt_last);
  REG_RMW_FIELD(ah, AR_RIMT, AR_RIMT_FIRST, ah->config.rimt_first);
 }

 if (ah->config.tx_intr_mitigation) {
  REG_RMW_FIELD(ah, AR_TIMT, AR_TIMT_LAST, 300);
  REG_RMW_FIELD(ah, AR_TIMT, AR_TIMT_FIRST, 750);
 }
 REG_RMW_BUFFER_FLUSH(ah);

 ath9k_hw_init_bb(ah, chan);

 if (caldata) {
  clear_bit(TXIQCAL_DONE, &caldata->cal_flags);
  clear_bit(TXCLCAL_DONE, &caldata->cal_flags);
 }
 if (!ath9k_hw_init_cal(ah, chan))
  return -EIO;

 if (ath9k_hw_mci_is_enabled(ah) && ar9003_mci_end_reset(ah, chan, caldata))
  return -EIO;

 ENABLE_REGWRITE_BUFFER(ah);

 ath9k_hw_restore_chainmask(ah);
 REG_WRITE(ah, AR_CFG_LED, saveLedState | AR_CFG_SCLK_32KHZ);

 REGWRITE_BUFFER_FLUSH(ah);

 ath9k_hw_gen_timer_start_tsf2(ah);

 ath9k_hw_init_desc(ah);

 if (ath9k_hw_btcoex_is_enabled(ah))
  ath9k_hw_btcoex_enable(ah);

 if (ath9k_hw_mci_is_enabled(ah))
  ar9003_mci_check_bt(ah);

 if (AR_SREV_9300_20_OR_LATER(ah)) {
  ath9k_hw_loadnf(ah, chan);
  ath9k_hw_start_nfcal(ah, 1);
 }

 if (AR_SREV_9300_20_OR_LATER(ah))
  ar9003_hw_bb_watchdog_config(ah);

 if (ah->config.hw_hang_checks & HW_PHYRESTART_CLC_WAR)
  ar9003_hw_disable_phy_restart(ah);

 ath9k_hw_apply_gpio_override(ah);

 if (AR_SREV_9565(ah) && common->bt_ant_diversity)
  REG_SET_BIT(ah, AR_BTCOEX_WL_LNADIV, AR_BTCOEX_WL_LNADIV_FORCE_ON);

 if (ah->hw->conf.radar_enabled) {

  ah->radar_conf.ext_channel = IS_CHAN_HT40(chan);
  ath9k_hw_set_radar_params(ah);
 }

 return 0;
}
