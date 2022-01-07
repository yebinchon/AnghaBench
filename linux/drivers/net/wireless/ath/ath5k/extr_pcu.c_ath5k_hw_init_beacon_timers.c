
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {int opmode; scalar_t__ ah_version; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_BEACON ;
 int AR5K_BEACON_ENABLE ;
 int AR5K_BEACON_PERIOD ;
 int AR5K_BEACON_RESET_TSF ;
 int AR5K_ISR ;
 int AR5K_ISR_BMISS ;
 int AR5K_PISR ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int ) ;
 int AR5K_STA_ID1 ;
 int AR5K_STA_ID1_PCF ;
 int AR5K_STA_ID1_PWR_SV ;
 int AR5K_TIMER0 ;
 int AR5K_TIMER1 ;
 int AR5K_TIMER2 ;
 int AR5K_TIMER3 ;
 int AR5K_TUNE_DMA_BEACON_RESP ;
 int AR5K_TUNE_SW_BEACON_RESP ;
 int AR5K_TXCFG ;
 int AR5K_TXCFG_ADHOC_BCN_ATIM ;

 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;


 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int ath5k_hw_reset_tsf (struct ath5k_hw*) ;

void
ath5k_hw_init_beacon_timers(struct ath5k_hw *ah, u32 next_beacon, u32 interval)
{
 u32 timer1, timer2, timer3;




 switch (ah->opmode) {
 case 129:
 case 128:




  if (ah->ah_version == AR5K_AR5210) {
   timer1 = 0xffffffff;
   timer2 = 0xffffffff;
  } else {
   timer1 = 0x0000ffff;
   timer2 = 0x0007ffff;
  }

  AR5K_REG_DISABLE_BITS(ah, AR5K_STA_ID1, AR5K_STA_ID1_PCF);
  break;
 case 130:
  AR5K_REG_ENABLE_BITS(ah, AR5K_TXCFG, AR5K_TXCFG_ADHOC_BCN_ATIM);

 default:



  timer1 = (next_beacon - AR5K_TUNE_DMA_BEACON_RESP) << 3;
  timer2 = (next_beacon - AR5K_TUNE_SW_BEACON_RESP) << 3;
  break;
 }




 timer3 = next_beacon + 1;





 if (ah->opmode == NL80211_IFTYPE_AP ||
     ah->opmode == NL80211_IFTYPE_MESH_POINT)
  ath5k_hw_reg_write(ah, 0, AR5K_TIMER0);

 ath5k_hw_reg_write(ah, next_beacon, AR5K_TIMER0);
 ath5k_hw_reg_write(ah, timer1, AR5K_TIMER1);
 ath5k_hw_reg_write(ah, timer2, AR5K_TIMER2);
 ath5k_hw_reg_write(ah, timer3, AR5K_TIMER3);


 if (interval & AR5K_BEACON_RESET_TSF)
  ath5k_hw_reset_tsf(ah);

 ath5k_hw_reg_write(ah, interval & (AR5K_BEACON_PERIOD |
     AR5K_BEACON_ENABLE),
      AR5K_BEACON);






 if (ah->ah_version == AR5K_AR5210)
  ath5k_hw_reg_write(ah, AR5K_ISR_BMISS, AR5K_ISR);
 else
  ath5k_hw_reg_write(ah, AR5K_ISR_BMISS, AR5K_PISR);




 AR5K_REG_DISABLE_BITS(ah, AR5K_STA_ID1, AR5K_STA_ID1_PWR_SV);

}
