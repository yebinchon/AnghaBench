
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msdc_host {scalar_t__ base; } ;


 scalar_t__ MSDC_CFG ;
 int MSDC_CFG_RST ;
 scalar_t__ MSDC_FIFOCS ;
 int MSDC_FIFOCS_CLR ;
 scalar_t__ MSDC_INT ;
 int cpu_relax () ;
 int readl (scalar_t__) ;
 int sdr_set_bits (scalar_t__,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void msdc_reset_hw(struct msdc_host *host)
{
 u32 val;

 sdr_set_bits(host->base + MSDC_CFG, MSDC_CFG_RST);
 while (readl(host->base + MSDC_CFG) & MSDC_CFG_RST)
  cpu_relax();

 sdr_set_bits(host->base + MSDC_FIFOCS, MSDC_FIFOCS_CLR);
 while (readl(host->base + MSDC_FIFOCS) & MSDC_FIFOCS_CLR)
  cpu_relax();

 val = readl(host->base + MSDC_INT);
 writel(val, host->base + MSDC_INT);
}
