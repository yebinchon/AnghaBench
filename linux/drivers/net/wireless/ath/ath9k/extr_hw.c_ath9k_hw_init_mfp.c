
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int sw_mgmt_crypto_tx; int sw_mgmt_crypto_rx; } ;


 int AR_AES_MUTE_MASK1 ;
 int AR_AES_MUTE_MASK1_FC_MGMT ;
 scalar_t__ AR_DEVID_7010 (struct ath_hw*) ;
 int AR_PCU_MISC_MODE2 ;
 int AR_PCU_MISC_MODE2_MGMT_CRYPTO_ENABLE ;
 int AR_PCU_MISC_MODE2_NO_CRYPTO_FOR_NON_DATA_PKT ;
 scalar_t__ AR_SREV_9160_10_OR_LATER (struct ath_hw*) ;
 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9280_20_OR_LATER (struct ath_hw*) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ath9k_hw_init_mfp(struct ath_hw *ah)
{

 if (AR_SREV_9280_20_OR_LATER(ah)) {


  REG_RMW_FIELD(ah, AR_AES_MUTE_MASK1, AR_AES_MUTE_MASK1_FC_MGMT,
         0xc7ff);
  if (AR_SREV_9271(ah) || AR_DEVID_7010(ah))
   ah->sw_mgmt_crypto_tx = 1;
  else
   ah->sw_mgmt_crypto_tx = 0;
  ah->sw_mgmt_crypto_rx = 0;
 } else if (AR_SREV_9160_10_OR_LATER(ah)) {

  REG_CLR_BIT(ah, AR_PCU_MISC_MODE2,
       AR_PCU_MISC_MODE2_MGMT_CRYPTO_ENABLE);
  REG_SET_BIT(ah, AR_PCU_MISC_MODE2,
       AR_PCU_MISC_MODE2_NO_CRYPTO_FOR_NON_DATA_PKT);
  ah->sw_mgmt_crypto_tx = 1;
  ah->sw_mgmt_crypto_rx = 1;
 } else {
  ah->sw_mgmt_crypto_tx = 1;
  ah->sw_mgmt_crypto_rx = 1;
 }
}
