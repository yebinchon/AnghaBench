
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {struct cqhci_host* cqe_private; } ;
struct cqhci_host {int enabled; int * desc_base; int * trans_desc_base; int desc_dma_base; int desc_size; int trans_desc_dma_base; int data_size; } ;


 int __cqhci_disable (struct cqhci_host*) ;
 int cqhci_off (struct mmc_host*) ;
 int dmam_free_coherent (int ,int ,int *,int ) ;
 int mmc_dev (struct mmc_host*) ;

__attribute__((used)) static void cqhci_disable(struct mmc_host *mmc)
{
 struct cqhci_host *cq_host = mmc->cqe_private;

 if (!cq_host->enabled)
  return;

 cqhci_off(mmc);

 __cqhci_disable(cq_host);

 dmam_free_coherent(mmc_dev(mmc), cq_host->data_size,
      cq_host->trans_desc_base,
      cq_host->trans_desc_dma_base);

 dmam_free_coherent(mmc_dev(mmc), cq_host->desc_size,
      cq_host->desc_base,
      cq_host->desc_dma_base);

 cq_host->trans_desc_base = ((void*)0);
 cq_host->desc_base = ((void*)0);

 cq_host->enabled = 0;
}
