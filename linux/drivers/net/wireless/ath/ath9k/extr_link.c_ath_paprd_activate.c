
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int txchainmask; struct ath9k_hw_cal_data* caldata; } ;
struct ath_common {int dummy; } ;
struct ath9k_hw_cal_data {int cal_flags; } ;


 int AR9300_MAX_CHAINS ;
 int BIT (int) ;
 int CALIBRATE ;
 int PAPRD_DONE ;
 int ar9003_paprd_enable (struct ath_hw*,int) ;
 int ar9003_paprd_populate_single_table (struct ath_hw*,struct ath9k_hw_cal_data*,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ath_paprd_activate(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_hw_cal_data *caldata = ah->caldata;
 int chain;

 if (!caldata || !test_bit(PAPRD_DONE, &caldata->cal_flags)) {
  ath_dbg(common, CALIBRATE, "Failed to activate PAPRD\n");
  return;
 }

 ar9003_paprd_enable(ah, 0);
 for (chain = 0; chain < AR9300_MAX_CHAINS; chain++) {
  if (!(ah->txchainmask & BIT(chain)))
   continue;

  ar9003_paprd_populate_single_table(ah, caldata, chain);
 }

 ath_dbg(common, CALIBRATE, "Activating PAPRD\n");
 ar9003_paprd_enable(ah, 1);
}
