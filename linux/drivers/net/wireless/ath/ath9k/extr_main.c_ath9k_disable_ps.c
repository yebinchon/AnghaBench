
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {int ps_enabled; int ps_flags; struct ath_hw* sc_ah; } ;
struct TYPE_2__ {int hw_caps; } ;
struct ath_hw {int imask; TYPE_1__ caps; } ;
struct ath_common {int dummy; } ;


 int ATH9K_HW_CAP_AUTOSLEEP ;
 int ATH9K_INT_TIM_TIMER ;
 int ATH9K_PM_AWAKE ;
 int CONFIG_ATH9K_TX99 ;
 scalar_t__ IS_ENABLED (int ) ;
 int PS ;
 int PS_WAIT_FOR_BEACON ;
 int PS_WAIT_FOR_CAB ;
 int PS_WAIT_FOR_PSPOLL_DATA ;
 int PS_WAIT_FOR_TX_ACK ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_set_interrupts (struct ath_hw*) ;
 int ath9k_hw_setpower (struct ath_hw*,int ) ;
 int ath9k_hw_setrxabort (struct ath_hw*,int ) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

__attribute__((used)) static void ath9k_disable_ps(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);

 if (IS_ENABLED(CONFIG_ATH9K_TX99))
  return;

 sc->ps_enabled = 0;
 ath9k_hw_setpower(ah, ATH9K_PM_AWAKE);
 if (!(ah->caps.hw_caps & ATH9K_HW_CAP_AUTOSLEEP)) {
  ath9k_hw_setrxabort(ah, 0);
  sc->ps_flags &= ~(PS_WAIT_FOR_BEACON |
      PS_WAIT_FOR_CAB |
      PS_WAIT_FOR_PSPOLL_DATA |
      PS_WAIT_FOR_TX_ACK);
  if (ah->imask & ATH9K_INT_TIM_TIMER) {
   ah->imask &= ~ATH9K_INT_TIM_TIMER;
   ath9k_hw_set_interrupts(ah);
  }
 }
 ath_dbg(common, PS, "PowerSave disabled\n");
}
