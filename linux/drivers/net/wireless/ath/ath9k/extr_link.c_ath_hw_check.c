
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_ah; } ;
struct ath_common {int dummy; } ;
typedef enum ath_reset_type { ____Placeholder_ath_reset_type } ath_reset_type ;


 int RESET ;
 int RESET_TYPE_MAC_HANG ;
 int ath9k_hw_check_alive (int ) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath9k_queue_reset (struct ath_softc*,int) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

bool ath_hw_check(struct ath_softc *sc)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 enum ath_reset_type type;
 bool is_alive;

 ath9k_ps_wakeup(sc);

 is_alive = ath9k_hw_check_alive(sc->sc_ah);

 if (!is_alive) {
  ath_dbg(common, RESET,
   "HW hang detected, schedule chip reset\n");
  type = RESET_TYPE_MAC_HANG;
  ath9k_queue_reset(sc, type);
 }

 ath9k_ps_restore(sc);

 return is_alive;
}
