
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_softc {TYPE_2__* hw; struct ath_hw* sc_ah; } ;
struct TYPE_3__ {int hw_caps; } ;
struct ath_hw {TYPE_1__ caps; } ;
struct TYPE_4__ {int wiphy; } ;


 int ATH9K_HW_CAP_RFSILENT ;
 int wiphy_rfkill_start_polling (int ) ;

void ath_start_rfkill_poll(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;

 if (ah->caps.hw_caps & ATH9K_HW_CAP_RFSILENT)
  wiphy_rfkill_start_polling(sc->hw->wiphy);
}
