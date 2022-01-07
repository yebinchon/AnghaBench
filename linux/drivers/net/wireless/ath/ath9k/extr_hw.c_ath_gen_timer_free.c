
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_gen_timer_table {int ** timers; } ;
struct ath_hw {struct ath_gen_timer_table hw_gen_timers; } ;
struct ath_gen_timer {size_t index; } ;


 int kfree (struct ath_gen_timer*) ;

void ath_gen_timer_free(struct ath_hw *ah, struct ath_gen_timer *timer)
{
 struct ath_gen_timer_table *timer_table = &ah->hw_gen_timers;


 timer_table->timers[timer->index] = ((void*)0);
 kfree(timer);
}
