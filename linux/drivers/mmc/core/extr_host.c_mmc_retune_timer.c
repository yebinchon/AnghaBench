
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mmc_host {int dummy; } ;


 struct mmc_host* from_timer (int ,struct timer_list*,int ) ;
 struct mmc_host* host ;
 int mmc_retune_needed (struct mmc_host*) ;
 int retune_timer ;

__attribute__((used)) static void mmc_retune_timer(struct timer_list *t)
{
 struct mmc_host *host = from_timer(host, t, retune_timer);

 mmc_retune_needed(host);
}
