
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_ah; } ;
struct ath_common {int op_flags; } ;
struct ath9k_channel {int dummy; } ;


 int ATH_OP_HW_RESET ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_hw_kill_interrupts (int ) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_reset_internal (struct ath_softc*,struct ath9k_channel*) ;
 int set_bit (int ,int *) ;

int ath_reset(struct ath_softc *sc, struct ath9k_channel *hchan)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 int r;

 ath9k_hw_kill_interrupts(sc->sc_ah);
 set_bit(ATH_OP_HW_RESET, &common->op_flags);

 ath9k_ps_wakeup(sc);
 r = ath_reset_internal(sc, hchan);
 ath9k_ps_restore(sc);

 return r;
}
