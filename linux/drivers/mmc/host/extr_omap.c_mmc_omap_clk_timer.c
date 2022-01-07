
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct mmc_omap_host {int dummy; } ;


 int clk_timer ;
 struct mmc_omap_host* from_timer (int ,struct timer_list*,int ) ;
 struct mmc_omap_host* host ;
 int mmc_omap_fclk_enable (struct mmc_omap_host*,int ) ;

__attribute__((used)) static void
mmc_omap_clk_timer(struct timer_list *t)
{
 struct mmc_omap_host *host = from_timer(host, t, clk_timer);

 mmc_omap_fclk_enable(host, 0);
}
