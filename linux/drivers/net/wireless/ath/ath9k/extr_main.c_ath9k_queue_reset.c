
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int hw_reset_work; int hw; int sc_ah; } ;
struct ath_common {int op_flags; } ;
typedef enum ath_reset_type { ____Placeholder_ath_reset_type } ath_reset_type ;


 int ATH_OP_HW_RESET ;
 int RESET_STAT_INC (struct ath_softc*,int) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_hw_kill_interrupts (int ) ;
 int ieee80211_queue_work (int ,int *) ;
 int set_bit (int ,int *) ;

void ath9k_queue_reset(struct ath_softc *sc, enum ath_reset_type type)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);



 ath9k_hw_kill_interrupts(sc->sc_ah);
 set_bit(ATH_OP_HW_RESET, &common->op_flags);
 ieee80211_queue_work(sc->hw, &sc->hw_reset_work);
}
