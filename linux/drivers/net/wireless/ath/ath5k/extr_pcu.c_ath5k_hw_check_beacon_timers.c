
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int dummy; } ;


 int AR5K_TIMER0 ;
 int AR5K_TIMER1 ;
 int AR5K_TIMER3 ;
 int AR5K_TUNE_DMA_BEACON_RESP ;
 scalar_t__ ath5k_check_timer_win (unsigned int,unsigned int,int,int) ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;

bool
ath5k_hw_check_beacon_timers(struct ath5k_hw *ah, int intval)
{
 unsigned int nbtt, atim, dma;

 nbtt = ath5k_hw_reg_read(ah, AR5K_TIMER0);
 atim = ath5k_hw_reg_read(ah, AR5K_TIMER3);
 dma = ath5k_hw_reg_read(ah, AR5K_TIMER1) >> 3;





 if (ath5k_check_timer_win(nbtt, atim, 1, intval) &&
     ath5k_check_timer_win(dma, nbtt, AR5K_TUNE_DMA_BEACON_RESP,
      intval))
  return 1;
 return 0;
}
