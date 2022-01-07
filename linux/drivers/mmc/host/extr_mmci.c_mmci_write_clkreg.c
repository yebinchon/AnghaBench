
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mmci_host {scalar_t__ clk_reg; scalar_t__ base; } ;


 scalar_t__ MMCICLOCK ;
 int writel (scalar_t__,scalar_t__) ;

void mmci_write_clkreg(struct mmci_host *host, u32 clk)
{
 if (host->clk_reg != clk) {
  host->clk_reg = clk;
  writel(clk, host->base + MMCICLOCK);
 }
}
