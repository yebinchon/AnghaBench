
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_gen_timer_table {int timer_mask; } ;
struct ath_hw {int imask; struct ath_gen_timer_table hw_gen_timers; } ;
struct ath_gen_timer {size_t index; scalar_t__ overflow; scalar_t__ trigger; } ;
struct TYPE_2__ {int mode_mask; int mode_addr; int period_addr; int next_addr; } ;


 int AR_GENTMR_BIT (int) ;
 size_t AR_GEN_TIMER_BANK_1_LEN ;
 int AR_IMR_S5 ;
 int AR_IMR_S5_GENTIMER_THRESH ;
 int AR_IMR_S5_GENTIMER_TRIG ;
 int AR_MAC_PCU_GEN_TIMER_TSF_SEL ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 int ATH9K_INT_GENTIMER ;
 int BIT (size_t) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int) ;
 int REG_WRITE (struct ath_hw*,int ,int) ;
 int SM (int ,int ) ;
 int ath9k_hw_set_interrupts (struct ath_hw*) ;
 TYPE_1__* gen_tmr_configuration ;

void ath9k_hw_gen_timer_start(struct ath_hw *ah,
         struct ath_gen_timer *timer,
         u32 timer_next,
         u32 timer_period)
{
 struct ath_gen_timer_table *timer_table = &ah->hw_gen_timers;
 u32 mask = 0;

 timer_table->timer_mask |= BIT(timer->index);




 REG_WRITE(ah, gen_tmr_configuration[timer->index].next_addr,
   timer_next);
 REG_WRITE(ah, gen_tmr_configuration[timer->index].period_addr,
    timer_period);
 REG_SET_BIT(ah, gen_tmr_configuration[timer->index].mode_addr,
      gen_tmr_configuration[timer->index].mode_mask);

 if (AR_SREV_9462(ah) || AR_SREV_9565(ah)) {





  if ((timer->index < AR_GEN_TIMER_BANK_1_LEN))
   REG_CLR_BIT(ah, AR_MAC_PCU_GEN_TIMER_TSF_SEL,
           (1 << timer->index));
  else
   REG_SET_BIT(ah, AR_MAC_PCU_GEN_TIMER_TSF_SEL,
           (1 << timer->index));
 }

 if (timer->trigger)
  mask |= SM(AR_GENTMR_BIT(timer->index),
      AR_IMR_S5_GENTIMER_TRIG);
 if (timer->overflow)
  mask |= SM(AR_GENTMR_BIT(timer->index),
      AR_IMR_S5_GENTIMER_THRESH);

 REG_SET_BIT(ah, AR_IMR_S5, mask);

 if ((ah->imask & ATH9K_INT_GENTIMER) == 0) {
  ah->imask |= ATH9K_INT_GENTIMER;
  ath9k_hw_set_interrupts(ah);
 }
}
