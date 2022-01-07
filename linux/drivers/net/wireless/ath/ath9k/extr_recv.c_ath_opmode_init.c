
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_setmcastfilter (struct ath_hw*,int ,int ) ;
 int ath9k_hw_setopmode (struct ath_hw*) ;
 int ath9k_hw_setrxfilter (struct ath_hw*,int ) ;
 int ath_calcrxfilter (struct ath_softc*) ;
 int ath_hw_setbssidmask (struct ath_common*) ;

__attribute__((used)) static void ath_opmode_init(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);

 u32 rfilt, mfilt[2];


 rfilt = ath_calcrxfilter(sc);
 ath9k_hw_setrxfilter(ah, rfilt);


 ath_hw_setbssidmask(common);


 ath9k_hw_setopmode(ah);


 mfilt[0] = mfilt[1] = ~0;
 ath9k_hw_setmcastfilter(ah, mfilt[0], mfilt[1]);
}
