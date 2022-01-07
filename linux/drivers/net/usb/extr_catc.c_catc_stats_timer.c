
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct catc {int timer; } ;


 scalar_t__ EthStats ;
 scalar_t__ STATS_UPDATE ;
 struct catc* catc ;
 int catc_get_reg_async (struct catc*,scalar_t__,int ) ;
 int catc_stats_done ;
 struct catc* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer ;

__attribute__((used)) static void catc_stats_timer(struct timer_list *t)
{
 struct catc *catc = from_timer(catc, t, timer);
 int i;

 for (i = 0; i < 8; i++)
  catc_get_reg_async(catc, EthStats + 7 - i, catc_stats_done);

 mod_timer(&catc->timer, jiffies + STATS_UPDATE);
}
