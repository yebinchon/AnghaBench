
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_mac_srev; scalar_t__ ah_coverage_class; scalar_t__ ah_ack_bitrate_high; scalar_t__ nvifs; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 scalar_t__ AR5K_AR5212 ;
 int AR5K_MIC_QOS_CTL ;
 int AR5K_MIC_QOS_SEL ;
 int AR5K_QOS_NOACK ;
 int AR5K_QOS_NOACK_2BIT_VALUES ;
 int AR5K_QOS_NOACK_BIT_OFFSET ;
 int AR5K_QOS_NOACK_BYTE_OFFSET ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int) ;
 int AR5K_REG_SM (int,int ) ;
 int AR5K_RSSI_THR ;
 int AR5K_RSSI_THR_BMISS_S ;
 scalar_t__ AR5K_SREV_AR2413 ;
 int AR5K_STA_ID1 ;
 int AR5K_STA_ID1_ACKCTS_6MB ;
 int AR5K_STA_ID1_BASE_RATE_11B ;
 int AR5K_TUNE_BMISS_THRES ;
 int AR5K_TUNE_RSSI_THRES ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int ath5k_hw_set_bssid (struct ath5k_hw*) ;
 int ath5k_hw_set_coverage_class (struct ath5k_hw*,scalar_t__) ;
 int ath5k_hw_set_opmode (struct ath5k_hw*,int) ;
 int ath5k_hw_write_rate_duration (struct ath5k_hw*) ;

void
ath5k_hw_pcu_init(struct ath5k_hw *ah, enum nl80211_iftype op_mode)
{

 ath5k_hw_set_bssid(ah);


 ath5k_hw_set_opmode(ah, op_mode);





 if (ah->ah_version == AR5K_AR5212 &&
  ah->nvifs)
  ath5k_hw_write_rate_duration(ah);
 ath5k_hw_reg_write(ah, (AR5K_TUNE_RSSI_THRES |
    AR5K_TUNE_BMISS_THRES <<
    AR5K_RSSI_THR_BMISS_S),
    AR5K_RSSI_THR);


 if (ah->ah_mac_srev >= AR5K_SREV_AR2413) {
  ath5k_hw_reg_write(ah, 0x000100aa, AR5K_MIC_QOS_CTL);
  ath5k_hw_reg_write(ah, 0x00003210, AR5K_MIC_QOS_SEL);
 }


 if (ah->ah_version == AR5K_AR5212) {
  ath5k_hw_reg_write(ah,
   AR5K_REG_SM(2, AR5K_QOS_NOACK_2BIT_VALUES) |
   AR5K_REG_SM(5, AR5K_QOS_NOACK_BIT_OFFSET) |
   AR5K_REG_SM(0, AR5K_QOS_NOACK_BYTE_OFFSET),
   AR5K_QOS_NOACK);
 }


 if (ah->ah_coverage_class > 0)
  ath5k_hw_set_coverage_class(ah, ah->ah_coverage_class);


 if (ah->ah_version == AR5K_AR5212) {
  u32 val = AR5K_STA_ID1_BASE_RATE_11B | AR5K_STA_ID1_ACKCTS_6MB;
  if (ah->ah_ack_bitrate_high)
   AR5K_REG_DISABLE_BITS(ah, AR5K_STA_ID1, val);
  else
   AR5K_REG_ENABLE_BITS(ah, AR5K_STA_ID1, val);
 }
 return;
}
