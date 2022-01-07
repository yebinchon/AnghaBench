
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ath_gen_timer_table {int tsf2_enabled; struct ath_gen_timer** timers; } ;
struct ath_hw {struct ath_gen_timer_table hw_gen_timers; } ;
struct ath_gen_timer {size_t index; void (* trigger ) (void*) ;void (* overflow ) (void*) ;void* arg; } ;


 size_t AR_FIRST_NDP_TIMER ;
 int AR_SREV_9300_20_OR_LATER (struct ath_hw*) ;
 size_t ATH_MAX_GEN_TIMER ;
 int GFP_KERNEL ;
 int ath9k_hw_gen_timer_start_tsf2 (struct ath_hw*) ;
 struct ath_gen_timer* kzalloc (int,int ) ;

struct ath_gen_timer *ath_gen_timer_alloc(struct ath_hw *ah,
       void (*trigger)(void *),
       void (*overflow)(void *),
       void *arg,
       u8 timer_index)
{
 struct ath_gen_timer_table *timer_table = &ah->hw_gen_timers;
 struct ath_gen_timer *timer;

 if ((timer_index < AR_FIRST_NDP_TIMER) ||
     (timer_index >= ATH_MAX_GEN_TIMER))
  return ((void*)0);

 if ((timer_index > AR_FIRST_NDP_TIMER) &&
     !AR_SREV_9300_20_OR_LATER(ah))
  return ((void*)0);

 timer = kzalloc(sizeof(struct ath_gen_timer), GFP_KERNEL);
 if (timer == ((void*)0))
  return ((void*)0);


 timer_table->timers[timer_index] = timer;
 timer->index = timer_index;
 timer->trigger = trigger;
 timer->overflow = overflow;
 timer->arg = arg;

 if ((timer_index > AR_FIRST_NDP_TIMER) && !timer_table->tsf2_enabled) {
  timer_table->tsf2_enabled = 1;
  ath9k_hw_gen_timer_start_tsf2(ah);
 }

 return timer;
}
