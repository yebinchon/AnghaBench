
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_mmc_host {int reset; int clk_ahb; int clk_mmc; int clk_output; int clk_sample; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int reset_control_assert (int ) ;
 int sunxi_mmc_reset_host (struct sunxi_mmc_host*) ;

__attribute__((used)) static void sunxi_mmc_disable(struct sunxi_mmc_host *host)
{
 sunxi_mmc_reset_host(host);

 clk_disable_unprepare(host->clk_sample);
 clk_disable_unprepare(host->clk_output);
 clk_disable_unprepare(host->clk_mmc);
 clk_disable_unprepare(host->clk_ahb);

 if (!IS_ERR(host->reset))
  reset_control_assert(host->reset);
}
