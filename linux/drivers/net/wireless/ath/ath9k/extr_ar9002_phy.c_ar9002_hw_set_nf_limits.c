
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nominal; int min; int max; } ;
struct TYPE_3__ {int nominal; int min; int max; } ;
struct ath_hw {TYPE_2__ nf_5g; TYPE_1__ nf_2g; } ;


 int AR_PHY_CCA_MAX_GOOD_VAL_9271_2GHZ ;
 int AR_PHY_CCA_MAX_GOOD_VAL_9280_2GHZ ;
 int AR_PHY_CCA_MAX_GOOD_VAL_9280_5GHZ ;
 int AR_PHY_CCA_MAX_GOOD_VAL_9285_2GHZ ;
 int AR_PHY_CCA_MAX_GOOD_VAL_9287_2GHZ ;
 int AR_PHY_CCA_MIN_GOOD_VAL_9271_2GHZ ;
 int AR_PHY_CCA_MIN_GOOD_VAL_9280_2GHZ ;
 int AR_PHY_CCA_MIN_GOOD_VAL_9280_5GHZ ;
 int AR_PHY_CCA_MIN_GOOD_VAL_9285_2GHZ ;
 int AR_PHY_CCA_MIN_GOOD_VAL_9287_2GHZ ;
 int AR_PHY_CCA_NOM_VAL_9271_2GHZ ;
 int AR_PHY_CCA_NOM_VAL_9280_2GHZ ;
 int AR_PHY_CCA_NOM_VAL_9280_5GHZ ;
 int AR_PHY_CCA_NOM_VAL_9285_2GHZ ;
 int AR_PHY_CCA_NOM_VAL_9287_2GHZ ;
 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9285 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9287 (struct ath_hw*) ;

__attribute__((used)) static void ar9002_hw_set_nf_limits(struct ath_hw *ah)
{
 if (AR_SREV_9285(ah)) {
  ah->nf_2g.max = AR_PHY_CCA_MAX_GOOD_VAL_9285_2GHZ;
  ah->nf_2g.min = AR_PHY_CCA_MIN_GOOD_VAL_9285_2GHZ;
  ah->nf_2g.nominal = AR_PHY_CCA_NOM_VAL_9285_2GHZ;
 } else if (AR_SREV_9287(ah)) {
  ah->nf_2g.max = AR_PHY_CCA_MAX_GOOD_VAL_9287_2GHZ;
  ah->nf_2g.min = AR_PHY_CCA_MIN_GOOD_VAL_9287_2GHZ;
  ah->nf_2g.nominal = AR_PHY_CCA_NOM_VAL_9287_2GHZ;
 } else if (AR_SREV_9271(ah)) {
  ah->nf_2g.max = AR_PHY_CCA_MAX_GOOD_VAL_9271_2GHZ;
  ah->nf_2g.min = AR_PHY_CCA_MIN_GOOD_VAL_9271_2GHZ;
  ah->nf_2g.nominal = AR_PHY_CCA_NOM_VAL_9271_2GHZ;
 } else {
  ah->nf_2g.max = AR_PHY_CCA_MAX_GOOD_VAL_9280_2GHZ;
  ah->nf_2g.min = AR_PHY_CCA_MIN_GOOD_VAL_9280_2GHZ;
  ah->nf_2g.nominal = AR_PHY_CCA_NOM_VAL_9280_2GHZ;
  ah->nf_5g.max = AR_PHY_CCA_MAX_GOOD_VAL_9280_5GHZ;
  ah->nf_5g.min = AR_PHY_CCA_MIN_GOOD_VAL_9280_5GHZ;
  ah->nf_5g.nominal = AR_PHY_CCA_NOM_VAL_9280_5GHZ;
 }
}
