
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdc_host {scalar_t__ base; int src_clk_cg; int src_clk; int bus_clk; int h_clk; } ;


 scalar_t__ MSDC_CFG ;
 int MSDC_CFG_CKSTB ;
 int clk_prepare_enable (int ) ;
 int cpu_relax () ;
 int readl (scalar_t__) ;

__attribute__((used)) static void msdc_ungate_clock(struct msdc_host *host)
{
 clk_prepare_enable(host->h_clk);
 clk_prepare_enable(host->bus_clk);
 clk_prepare_enable(host->src_clk);
 clk_prepare_enable(host->src_clk_cg);
 while (!(readl(host->base + MSDC_CFG) & MSDC_CFG_CKSTB))
  cpu_relax();
}
