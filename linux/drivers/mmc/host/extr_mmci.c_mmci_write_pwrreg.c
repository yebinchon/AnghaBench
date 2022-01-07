
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mmci_host {scalar_t__ pwr_reg; scalar_t__ base; } ;


 scalar_t__ MMCIPOWER ;
 int writel (scalar_t__,scalar_t__) ;

void mmci_write_pwrreg(struct mmci_host *host, u32 pwr)
{
 if (host->pwr_reg != pwr) {
  host->pwr_reg = pwr;
  writel(pwr, host->base + MMCIPOWER);
 }
}
