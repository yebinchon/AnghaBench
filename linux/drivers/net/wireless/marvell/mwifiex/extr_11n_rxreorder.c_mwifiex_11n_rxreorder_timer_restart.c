
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int timer_is_set; int timer; } ;
struct mwifiex_rx_reorder_tbl {int win_size; TYPE_1__ timer_context; } ;


 int MIN_FLUSH_TIMER_15_MS ;
 int MIN_FLUSH_TIMER_MS ;
 int MWIFIEX_BA_WIN_SIZE_32 ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static void
mwifiex_11n_rxreorder_timer_restart(struct mwifiex_rx_reorder_tbl *tbl)
{
 u32 min_flush_time;

 if (tbl->win_size >= MWIFIEX_BA_WIN_SIZE_32)
  min_flush_time = MIN_FLUSH_TIMER_15_MS;
 else
  min_flush_time = MIN_FLUSH_TIMER_MS;

 mod_timer(&tbl->timer_context.timer,
    jiffies + msecs_to_jiffies(min_flush_time * tbl->win_size));

 tbl->timer_context.timer_is_set = 1;
}
