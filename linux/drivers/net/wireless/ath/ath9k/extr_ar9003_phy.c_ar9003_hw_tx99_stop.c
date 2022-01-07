
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_DIAG_RX_DIS ;
 int AR_DIAG_SW ;
 int AR_PHY_TEST ;
 int PHY_AGC_CLR ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ar9003_hw_tx99_stop(struct ath_hw *ah)
{
 REG_CLR_BIT(ah, AR_PHY_TEST, PHY_AGC_CLR);
 REG_SET_BIT(ah, AR_DIAG_SW, AR_DIAG_RX_DIS);
}
