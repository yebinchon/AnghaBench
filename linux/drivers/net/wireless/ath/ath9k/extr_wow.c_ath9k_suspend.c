
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct cfg80211_wowlan {int dummy; } ;
struct ath_softc {int wow_intr_before_sleep; int mutex; int intr_tq; int irq; int sc_pcu_lock; TYPE_1__* cur_chan; struct ath_hw* sc_ah; } ;
struct ath_hw {int imask; } ;
struct ath_common {int op_flags; } ;
struct TYPE_2__ {int nvifs; } ;


 int AH_WOW_USER_PATTERN_EN ;
 int ATH9K_INT_BMISS ;
 int ATH9K_INT_GLOBAL ;
 int ATH_OP_INVALID ;
 int ATH_OP_MULTI_CHANNEL ;
 int ATH_OP_PRIM_STA_VIF ;
 int ATH_OP_WOW_ENABLED ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 int WOW ;
 int ath9k_deinit_channel_context (struct ath_softc*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_disable_interrupts (struct ath_hw*) ;
 int ath9k_hw_enable_interrupts (struct ath_hw*) ;
 int ath9k_hw_set_interrupts (struct ath_hw*) ;
 int ath9k_hw_wow_enable (struct ath_hw*,int) ;
 scalar_t__ ath9k_is_chanctx_enabled () ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath9k_stop_btcoex (struct ath_softc*) ;
 int ath9k_wow_add_disassoc_deauth_pattern (struct ath_softc*) ;
 int ath9k_wow_add_pattern (struct ath_softc*,struct cfg80211_wowlan*) ;
 int ath9k_wow_map_triggers (struct ath_softc*,struct cfg80211_wowlan*) ;
 int ath_cancel_work (struct ath_softc*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int ath_err (struct ath_common*,char*,...) ;
 int ath_stop_ani (struct ath_softc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_irq (int ) ;
 int tasklet_kill (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int ath9k_suspend(struct ieee80211_hw *hw,
    struct cfg80211_wowlan *wowlan)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 u8 triggers;
 int ret = 0;

 ath9k_deinit_channel_context(sc);

 mutex_lock(&sc->mutex);

 if (test_bit(ATH_OP_INVALID, &common->op_flags)) {
  ath_err(common, "Device not present\n");
  ret = -ENODEV;
  goto fail_wow;
 }

 if (WARN_ON(!wowlan)) {
  ath_err(common, "None of the WoW triggers enabled\n");
  ret = -EINVAL;
  goto fail_wow;
 }

 if (sc->cur_chan->nvifs > 1) {
  ath_dbg(common, WOW, "WoW for multivif is not yet supported\n");
  ret = 1;
  goto fail_wow;
 }

 if (ath9k_is_chanctx_enabled()) {
  if (test_bit(ATH_OP_MULTI_CHANNEL, &common->op_flags)) {
   ath_dbg(common, WOW,
    "Multi-channel WOW is not supported\n");
   ret = 1;
   goto fail_wow;
  }
 }

 if (!test_bit(ATH_OP_PRIM_STA_VIF, &common->op_flags)) {
  ath_dbg(common, WOW, "None of the STA vifs are associated\n");
  ret = 1;
  goto fail_wow;
 }

 triggers = ath9k_wow_map_triggers(sc, wowlan);
 if (!triggers) {
  ath_dbg(common, WOW, "No valid WoW triggers\n");
  ret = 1;
  goto fail_wow;
 }

 ath_cancel_work(sc);
 ath_stop_ani(sc);

 ath9k_ps_wakeup(sc);

 ath9k_stop_btcoex(sc);





 ret = ath9k_wow_add_disassoc_deauth_pattern(sc);
 if (ret) {
  ath_err(common,
   "Unable to add disassoc/deauth pattern: %d\n", ret);
  goto fail_wow;
 }

 if (triggers & AH_WOW_USER_PATTERN_EN) {
  ret = ath9k_wow_add_pattern(sc, wowlan);
  if (ret) {
   ath_err(common,
    "Unable to add user pattern: %d\n", ret);
   goto fail_wow;
  }
 }

 spin_lock_bh(&sc->sc_pcu_lock);





 sc->wow_intr_before_sleep = ah->imask;
 ah->imask &= ~ATH9K_INT_GLOBAL;
 ath9k_hw_disable_interrupts(ah);
 ah->imask = ATH9K_INT_BMISS | ATH9K_INT_GLOBAL;
 ath9k_hw_set_interrupts(ah);
 ath9k_hw_enable_interrupts(ah);

 spin_unlock_bh(&sc->sc_pcu_lock);





 synchronize_irq(sc->irq);
 tasklet_kill(&sc->intr_tq);

 ath9k_hw_wow_enable(ah, triggers);

 ath9k_ps_restore(sc);
 ath_dbg(common, WOW, "Suspend with WoW triggers: 0x%x\n", triggers);

 set_bit(ATH_OP_WOW_ENABLED, &common->op_flags);
fail_wow:
 mutex_unlock(&sc->mutex);
 return ret;
}
