
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ath_softc {int ps_flags; int hw; scalar_t__ gtt_cnt; int sc_pm_lock; TYPE_1__* cur_chan; struct ath_hw* sc_ah; } ;
struct ath_hw {scalar_t__ opmode; } ;
struct ath_common {int op_flags; } ;
struct TYPE_2__ {scalar_t__ tsf_val; int tsf_ts; int offchannel; int cur_txpower; int txpower; } ;


 int ATH_OP_BEACONS ;
 int ATH_OP_HW_RESET ;
 int ATH_OP_PRIM_STA_VIF ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int PS_BEACON_SYNC ;
 int PS_WAIT_FOR_BEACON ;
 int ath9k_calculate_summary_state (struct ath_softc*,TYPE_1__*) ;
 int ath9k_cmn_update_txpow (struct ath_hw*,int ,int ,int *) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_enable_interrupts (struct ath_hw*) ;
 scalar_t__ ath9k_hw_get_tsf_offset (int *,int *) ;
 int ath9k_hw_set_interrupts (struct ath_hw*) ;
 int ath9k_hw_settsf64 (struct ath_hw*,scalar_t__) ;
 int ath9k_p2p_ps_timer (struct ath_softc*) ;
 int ath9k_set_beacon (struct ath_softc*) ;
 int ath_restart_work (struct ath_softc*) ;
 int ath_startrecv (struct ath_softc*) ;
 int ath_txq_schedule_all (struct ath_softc*) ;
 int clear_bit (int ,int *) ;
 int ieee80211_wake_queues (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool ath_complete_reset(struct ath_softc *sc, bool start)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 unsigned long flags;

 ath9k_calculate_summary_state(sc, sc->cur_chan);
 ath_startrecv(sc);
 ath9k_cmn_update_txpow(ah, sc->cur_chan->cur_txpower,
          sc->cur_chan->txpower,
          &sc->cur_chan->cur_txpower);
 clear_bit(ATH_OP_HW_RESET, &common->op_flags);

 if (!sc->cur_chan->offchannel && start) {

  if (sc->cur_chan->tsf_val) {
   u32 offset;

   offset = ath9k_hw_get_tsf_offset(&sc->cur_chan->tsf_ts,
        ((void*)0));
   ath9k_hw_settsf64(ah, sc->cur_chan->tsf_val + offset);
  }


  if (!test_bit(ATH_OP_BEACONS, &common->op_flags))
   goto work;

  if (ah->opmode == NL80211_IFTYPE_STATION &&
      test_bit(ATH_OP_PRIM_STA_VIF, &common->op_flags)) {
   spin_lock_irqsave(&sc->sc_pm_lock, flags);
   sc->ps_flags |= PS_BEACON_SYNC | PS_WAIT_FOR_BEACON;
   spin_unlock_irqrestore(&sc->sc_pm_lock, flags);
  } else {
   ath9k_set_beacon(sc);
  }
 work:
  ath_restart_work(sc);
  ath_txq_schedule_all(sc);
 }

 sc->gtt_cnt = 0;

 ath9k_hw_set_interrupts(ah);
 ath9k_hw_enable_interrupts(ah);
 ieee80211_wake_queues(sc->hw);
 ath9k_p2p_ps_timer(sc);

 return 1;
}
