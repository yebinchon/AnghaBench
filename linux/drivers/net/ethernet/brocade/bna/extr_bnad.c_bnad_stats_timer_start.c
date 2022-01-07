
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int bna_lock; int stats_timer; int run_flags; } ;


 int BNAD_RF_STATS_TIMER_RUNNING ;
 int BNAD_STATS_TIMER_FREQ ;
 int bnad_stats_timeout ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int ,int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void
bnad_stats_timer_start(struct bnad *bnad)
{
 unsigned long flags;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 if (!test_and_set_bit(BNAD_RF_STATS_TIMER_RUNNING, &bnad->run_flags)) {
  timer_setup(&bnad->stats_timer, bnad_stats_timeout, 0);
  mod_timer(&bnad->stats_timer,
     jiffies + msecs_to_jiffies(BNAD_STATS_TIMER_FREQ));
 }
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
}
