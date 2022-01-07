
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmci_host {int datactrl_reg; scalar_t__ base; TYPE_1__* variant; } ;
struct TYPE_2__ {int busy_dpsm_flag; } ;


 scalar_t__ MMCIDATACTRL ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mmci_write_datactrlreg(struct mmci_host *host, u32 datactrl)
{

 datactrl |= host->datactrl_reg & host->variant->busy_dpsm_flag;

 if (host->datactrl_reg != datactrl) {
  host->datactrl_reg = datactrl;
  writel(datactrl, host->base + MMCIDATACTRL);
 }
}
