
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {TYPE_1__* caldata; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_2__ {int* caldac; int cal_flags; } ;


 int AR_PHY_65NM_RXRF_AGC (int) ;
 int AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR ;
 int AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR ;
 int AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE ;
 scalar_t__ IS_CHAN_2GHZ (struct ath9k_channel*) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int RTT_DONE ;
 int SW_PKDET_DONE ;
 int ar9003_hw_rtt_disable (struct ath_hw*) ;
 int ar9003_hw_rtt_enable (struct ath_hw*) ;
 int ar9003_hw_rtt_force_restore (struct ath_hw*) ;
 int ar9003_hw_rtt_load_hist (struct ath_hw*) ;
 int ar9003_hw_rtt_set_mask (struct ath_hw*,int) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_rfbus_done (struct ath_hw*) ;
 int ath9k_hw_rfbus_req (struct ath_hw*) ;
 int ath_err (int ,char*) ;
 scalar_t__ test_bit (int ,int *) ;

bool ar9003_hw_rtt_restore(struct ath_hw *ah, struct ath9k_channel *chan)
{
 bool restore;

 if (!ah->caldata)
  return 0;

 if (test_bit(SW_PKDET_DONE, &ah->caldata->cal_flags)) {
  if (IS_CHAN_2GHZ(chan)){
   REG_RMW_FIELD(ah, AR_PHY_65NM_RXRF_AGC(0),
          AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR,
          ah->caldata->caldac[0]);
   REG_RMW_FIELD(ah, AR_PHY_65NM_RXRF_AGC(1),
          AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR,
          ah->caldata->caldac[1]);
  } else {
   REG_RMW_FIELD(ah, AR_PHY_65NM_RXRF_AGC(0),
          AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR,
          ah->caldata->caldac[0]);
   REG_RMW_FIELD(ah, AR_PHY_65NM_RXRF_AGC(1),
          AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR,
          ah->caldata->caldac[1]);
  }
  REG_RMW_FIELD(ah, AR_PHY_65NM_RXRF_AGC(1),
         AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE, 0x1);
  REG_RMW_FIELD(ah, AR_PHY_65NM_RXRF_AGC(0),
         AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE, 0x1);
 }

 if (!test_bit(RTT_DONE, &ah->caldata->cal_flags))
  return 0;

 ar9003_hw_rtt_enable(ah);

 if (test_bit(SW_PKDET_DONE, &ah->caldata->cal_flags))
  ar9003_hw_rtt_set_mask(ah, 0x30);
 else
  ar9003_hw_rtt_set_mask(ah, 0x10);

 if (!ath9k_hw_rfbus_req(ah)) {
  ath_err(ath9k_hw_common(ah), "Could not stop baseband\n");
  restore = 0;
  goto fail;
 }

 ar9003_hw_rtt_load_hist(ah);
 restore = ar9003_hw_rtt_force_restore(ah);

fail:
 ath9k_hw_rfbus_done(ah);
 ar9003_hw_rtt_disable(ah);
 return restore;
}
