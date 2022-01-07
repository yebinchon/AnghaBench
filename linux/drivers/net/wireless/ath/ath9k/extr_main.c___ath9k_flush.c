
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int hw_check_work; int sc_pcu_lock; int tx_wait; int chan_lock; TYPE_1__* cur_chan; struct ath_hw* sc_ah; } ;
struct ath_hw {int ah_flags; } ;
struct ath_common {int op_flags; } ;
struct TYPE_2__ {int flush_timeout; } ;


 int AH_UNPLUGGED ;
 int ANY ;
 int ATH_HW_CHECK_POLL_INT ;
 int ATH_OP_INVALID ;
 int CHAN_CTX ;
 int HZ ;
 int ath9k_has_tx_pending (struct ath_softc*,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int ath_drain_all_txq (struct ath_softc*) ;
 int ath_reset (struct ath_softc*,int *) ;
 int cancel_delayed_work_sync (int *) ;
 int ieee80211_queue_delayed_work (struct ieee80211_hw*,int *,int ) ;
 int jiffies_to_msecs (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ wait_event_timeout (int ,int,int) ;

void __ath9k_flush(struct ieee80211_hw *hw, u32 queues, bool drop,
     bool sw_pending, bool timeout_override)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 int timeout;
 bool drain_txq;

 cancel_delayed_work_sync(&sc->hw_check_work);

 if (ah->ah_flags & AH_UNPLUGGED) {
  ath_dbg(common, ANY, "Device has been unplugged!\n");
  return;
 }

 if (test_bit(ATH_OP_INVALID, &common->op_flags)) {
  ath_dbg(common, ANY, "Device not present\n");
  return;
 }

 spin_lock_bh(&sc->chan_lock);
 if (timeout_override)
  timeout = HZ / 5;
 else
  timeout = sc->cur_chan->flush_timeout;
 spin_unlock_bh(&sc->chan_lock);

 ath_dbg(common, CHAN_CTX,
  "Flush timeout: %d\n", jiffies_to_msecs(timeout));

 if (wait_event_timeout(sc->tx_wait, !ath9k_has_tx_pending(sc, sw_pending),
          timeout) > 0)
  drop = 0;

 if (drop) {
  ath9k_ps_wakeup(sc);
  spin_lock_bh(&sc->sc_pcu_lock);
  drain_txq = ath_drain_all_txq(sc);
  spin_unlock_bh(&sc->sc_pcu_lock);

  if (!drain_txq)
   ath_reset(sc, ((void*)0));

  ath9k_ps_restore(sc);
 }

 ieee80211_queue_delayed_work(hw, &sc->hw_check_work,
         ATH_HW_CHECK_POLL_INT);
}
