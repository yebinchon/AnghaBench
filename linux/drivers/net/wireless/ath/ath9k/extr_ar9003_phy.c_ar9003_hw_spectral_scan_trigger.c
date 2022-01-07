
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_PHY_SPECTRAL_SCAN ;
 int AR_PHY_SPECTRAL_SCAN_ACTIVE ;
 int AR_PHY_SPECTRAL_SCAN_ENABLE ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ar9003_hw_spectral_scan_trigger(struct ath_hw *ah)
{
 REG_SET_BIT(ah, AR_PHY_SPECTRAL_SCAN,
      AR_PHY_SPECTRAL_SCAN_ENABLE);

 REG_SET_BIT(ah, AR_PHY_SPECTRAL_SCAN,
      AR_PHY_SPECTRAL_SCAN_ACTIVE);
}
