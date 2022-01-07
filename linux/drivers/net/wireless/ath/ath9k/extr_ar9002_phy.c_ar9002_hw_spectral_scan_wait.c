
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int AH_WAIT_TIMEOUT ;
 int AR_PHY_SPECTRAL_SCAN ;
 int AR_PHY_SPECTRAL_SCAN_ACTIVE ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_wait (struct ath_hw*,int ,int ,int ,int ) ;
 int ath_err (struct ath_common*,char*) ;

__attribute__((used)) static void ar9002_hw_spectral_scan_wait(struct ath_hw *ah)
{
 struct ath_common *common = ath9k_hw_common(ah);


 if (!ath9k_hw_wait(ah, AR_PHY_SPECTRAL_SCAN,
      AR_PHY_SPECTRAL_SCAN_ACTIVE,
      0, AH_WAIT_TIMEOUT)) {
  ath_err(common, "spectral scan wait failed\n");
  return;
 }
}
