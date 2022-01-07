
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_softc {TYPE_2__* sc_ah; } ;
struct ath_common {int btcoex_enabled; } ;
struct TYPE_3__ {int hw_caps; } ;
struct TYPE_4__ {int imask; TYPE_1__ caps; } ;


 int ATH9K_HW_CAP_MCI ;
 int ATH9K_INT_MCI ;
 struct ath_common* ath9k_hw_common (TYPE_2__*) ;

void ath_mci_enable(struct ath_softc *sc)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);

 if (!common->btcoex_enabled)
  return;

 if (sc->sc_ah->caps.hw_caps & ATH9K_HW_CAP_MCI)
  sc->sc_ah->imask |= ATH9K_INT_MCI;
}
