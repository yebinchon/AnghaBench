
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {int intr_tq; int bcon_tasklet; int sc_pcu_lock; int irq; TYPE_1__* cur_chan; struct ath_hw* sc_ah; int chan_lock; int cur_chandef; } ;
struct ath_hw {struct ath9k_channel* curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_hw_cal_data {int dummy; } ;
struct ath9k_channel {int channel; } ;
struct TYPE_2__ {scalar_t__ offchannel; int chandef; struct ath9k_hw_cal_data caldata; } ;


 int CONFIG ;
 int EIO ;
 int IS_CHAN_HT40 (struct ath9k_channel*) ;
 int RESET_TYPE_BB_HANG ;
 int __ath_cancel_work (struct ath_softc*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_enable_interrupts (struct ath_hw*) ;
 scalar_t__ ath9k_hw_mci_is_enabled (struct ath_hw*) ;
 int ath9k_hw_reset (struct ath_hw*,struct ath9k_channel*,struct ath9k_hw_cal_data*,int) ;
 scalar_t__ ath9k_is_chanctx_enabled () ;
 int ath9k_mci_set_txpower (struct ath_softc*,int,int) ;
 int ath9k_queue_reset (struct ath_softc*,int ) ;
 int ath_complete_reset (struct ath_softc*,int) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ,int) ;
 int ath_err (struct ath_common*,char*,int) ;
 int ath_prepare_reset (struct ath_softc*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static int ath_reset_internal(struct ath_softc *sc, struct ath9k_channel *hchan)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_cal_data *caldata = ((void*)0);
 bool fastcc = 1;
 int r;

 __ath_cancel_work(sc);

 disable_irq(sc->irq);
 tasklet_disable(&sc->intr_tq);
 tasklet_disable(&sc->bcon_tasklet);
 spin_lock_bh(&sc->sc_pcu_lock);

 if (!sc->cur_chan->offchannel) {
  fastcc = 0;
  caldata = &sc->cur_chan->caldata;
 }

 if (!hchan) {
  fastcc = 0;
  hchan = ah->curchan;
 }

 if (!ath_prepare_reset(sc))
  fastcc = 0;

 if (ath9k_is_chanctx_enabled())
  fastcc = 0;

 spin_lock_bh(&sc->chan_lock);
 sc->cur_chandef = sc->cur_chan->chandef;
 spin_unlock_bh(&sc->chan_lock);

 ath_dbg(common, CONFIG, "Reset to %u MHz, HT40: %d fastcc: %d\n",
  hchan->channel, IS_CHAN_HT40(hchan), fastcc);

 r = ath9k_hw_reset(ah, hchan, caldata, fastcc);
 if (r) {
  ath_err(common,
   "Unable to reset channel, reset status %d\n", r);

  ath9k_hw_enable_interrupts(ah);
  ath9k_queue_reset(sc, RESET_TYPE_BB_HANG);

  goto out;
 }

 if (ath9k_hw_mci_is_enabled(sc->sc_ah) &&
     sc->cur_chan->offchannel)
  ath9k_mci_set_txpower(sc, 1, 0);

 if (!ath_complete_reset(sc, 1))
  r = -EIO;

out:
 enable_irq(sc->irq);
 spin_unlock_bh(&sc->sc_pcu_lock);
 tasklet_enable(&sc->bcon_tasklet);
 tasklet_enable(&sc->intr_tq);

 return r;
}
