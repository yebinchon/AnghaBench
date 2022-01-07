
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mmc_omap_slot {int cover_tasklet; } ;


 int cover_timer ;
 struct mmc_omap_slot* from_timer (int ,struct timer_list*,int ) ;
 struct mmc_omap_slot* slot ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void mmc_omap_cover_timer(struct timer_list *t)
{
 struct mmc_omap_slot *slot = from_timer(slot, t, cover_timer);
 tasklet_schedule(&slot->cover_tasklet);
}
