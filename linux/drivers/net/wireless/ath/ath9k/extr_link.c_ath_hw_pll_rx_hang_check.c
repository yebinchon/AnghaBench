
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_softc {int sc_ah; } ;
struct ath_common {int dummy; } ;


 int RESET ;
 int RESET_TYPE_PLL_HANG ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_queue_reset (struct ath_softc*,int ) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

__attribute__((used)) static bool ath_hw_pll_rx_hang_check(struct ath_softc *sc, u32 pll_sqsum)
{
 static int count;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);

 if (pll_sqsum >= 0x40000) {
  count++;
  if (count == 3) {
   ath_dbg(common, RESET, "PLL WAR, resetting the chip\n");
   ath9k_queue_reset(sc, RESET_TYPE_PLL_HANG);
   count = 0;
   return 1;
  }
 } else {
  count = 0;
 }

 return 0;
}
