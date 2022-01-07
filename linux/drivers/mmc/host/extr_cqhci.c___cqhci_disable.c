
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cqhci_host {int activated; TYPE_1__* mmc; } ;
struct TYPE_2__ {int cqe_on; } ;


 int CQHCI_CFG ;
 int CQHCI_ENABLE ;
 int cqhci_readl (struct cqhci_host*,int ) ;
 int cqhci_writel (struct cqhci_host*,int ,int ) ;

__attribute__((used)) static void __cqhci_disable(struct cqhci_host *cq_host)
{
 u32 cqcfg;

 cqcfg = cqhci_readl(cq_host, CQHCI_CFG);
 cqcfg &= ~CQHCI_ENABLE;
 cqhci_writel(cq_host, cqcfg, CQHCI_CFG);

 cq_host->mmc->cqe_on = 0;

 cq_host->activated = 0;
}
