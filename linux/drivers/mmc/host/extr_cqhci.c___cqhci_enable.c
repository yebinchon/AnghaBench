
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_host {int caps2; int cqe_on; } ;
struct cqhci_host {int caps; int rca; int activated; TYPE_1__* ops; int desc_dma_base; struct mmc_host* mmc; } ;
struct TYPE_2__ {int (* enable ) (struct mmc_host*) ;} ;


 int CQHCI_CFG ;
 int CQHCI_DCMD ;
 int CQHCI_ENABLE ;
 int CQHCI_IS_MASK ;
 int CQHCI_SSC2 ;
 int CQHCI_TASK_DESC_SZ ;
 int CQHCI_TASK_DESC_SZ_128 ;
 int CQHCI_TDLBA ;
 int CQHCI_TDLBAU ;
 int MMC_CAP2_CQE_DCMD ;
 int cqhci_readl (struct cqhci_host*,int ) ;
 int cqhci_set_irqs (struct cqhci_host*,int ) ;
 int cqhci_writel (struct cqhci_host*,int,int ) ;
 int lower_32_bits (int ) ;
 int stub1 (struct mmc_host*) ;
 int upper_32_bits (int ) ;
 int wmb () ;

__attribute__((used)) static void __cqhci_enable(struct cqhci_host *cq_host)
{
 struct mmc_host *mmc = cq_host->mmc;
 u32 cqcfg;

 cqcfg = cqhci_readl(cq_host, CQHCI_CFG);


 if (cqcfg & CQHCI_ENABLE) {
  cqcfg &= ~CQHCI_ENABLE;
  cqhci_writel(cq_host, cqcfg, CQHCI_CFG);
 }

 cqcfg &= ~(CQHCI_DCMD | CQHCI_TASK_DESC_SZ);

 if (mmc->caps2 & MMC_CAP2_CQE_DCMD)
  cqcfg |= CQHCI_DCMD;

 if (cq_host->caps & CQHCI_TASK_DESC_SZ_128)
  cqcfg |= CQHCI_TASK_DESC_SZ;

 cqhci_writel(cq_host, cqcfg, CQHCI_CFG);

 cqhci_writel(cq_host, lower_32_bits(cq_host->desc_dma_base),
       CQHCI_TDLBA);
 cqhci_writel(cq_host, upper_32_bits(cq_host->desc_dma_base),
       CQHCI_TDLBAU);

 cqhci_writel(cq_host, cq_host->rca, CQHCI_SSC2);

 cqhci_set_irqs(cq_host, 0);

 cqcfg |= CQHCI_ENABLE;

 cqhci_writel(cq_host, cqcfg, CQHCI_CFG);

 mmc->cqe_on = 1;

 if (cq_host->ops->enable)
  cq_host->ops->enable(mmc);


 wmb();

 cqhci_set_irqs(cq_host, CQHCI_IS_MASK);

 cq_host->activated = 1;
}
