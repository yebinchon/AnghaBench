
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cqhci_host {int caps; int task_desc_len; int quirks; int trans_desc_len; int link_desc_len; int slot_sz; int desc_size; int num_slots; int data_size; scalar_t__ trans_desc_dma_base; scalar_t__ desc_dma_base; void* trans_desc_base; int * desc_base; TYPE_1__* mmc; scalar_t__ dma64; } ;
struct TYPE_3__ {int max_segs; int cqe_qdepth; } ;


 int CQHCI_CFG ;
 int CQHCI_QUIRK_SHORT_TXFR_DESC_SZ ;
 int CQHCI_TASK_DESC_SZ ;
 int CQHCI_TASK_DESC_SZ_128 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cqhci_readl (struct cqhci_host*,int ) ;
 int cqhci_writel (struct cqhci_host*,int,int ) ;
 void* dmam_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int dmam_free_coherent (int ,int,int *,scalar_t__) ;
 int mmc_dev (TYPE_1__*) ;
 int mmc_hostname (TYPE_1__*) ;
 int pr_debug (char*,int ,int,int,unsigned long long,...) ;
 int setup_trans_desc (struct cqhci_host*,int) ;

__attribute__((used)) static int cqhci_host_alloc_tdl(struct cqhci_host *cq_host)
{
 int i = 0;


 if (cq_host->caps & CQHCI_TASK_DESC_SZ_128) {
  cqhci_writel(cq_host, cqhci_readl(cq_host, CQHCI_CFG) |
          CQHCI_TASK_DESC_SZ, CQHCI_CFG);
  cq_host->task_desc_len = 16;
 } else {
  cq_host->task_desc_len = 8;
 }






 if (cq_host->dma64) {
  if (cq_host->quirks & CQHCI_QUIRK_SHORT_TXFR_DESC_SZ)
   cq_host->trans_desc_len = 12;
  else
   cq_host->trans_desc_len = 16;
  cq_host->link_desc_len = 16;
 } else {
  cq_host->trans_desc_len = 8;
  cq_host->link_desc_len = 8;
 }


 cq_host->slot_sz = cq_host->task_desc_len + cq_host->link_desc_len;

 cq_host->desc_size = cq_host->slot_sz * cq_host->num_slots;

 cq_host->data_size = cq_host->trans_desc_len * cq_host->mmc->max_segs *
  cq_host->mmc->cqe_qdepth;

 pr_debug("%s: cqhci: desc_size: %zu data_sz: %zu slot-sz: %d\n",
   mmc_hostname(cq_host->mmc), cq_host->desc_size, cq_host->data_size,
   cq_host->slot_sz);







 cq_host->desc_base = dmam_alloc_coherent(mmc_dev(cq_host->mmc),
       cq_host->desc_size,
       &cq_host->desc_dma_base,
       GFP_KERNEL);
 if (!cq_host->desc_base)
  return -ENOMEM;

 cq_host->trans_desc_base = dmam_alloc_coherent(mmc_dev(cq_host->mmc),
           cq_host->data_size,
           &cq_host->trans_desc_dma_base,
           GFP_KERNEL);
 if (!cq_host->trans_desc_base) {
  dmam_free_coherent(mmc_dev(cq_host->mmc), cq_host->desc_size,
       cq_host->desc_base,
       cq_host->desc_dma_base);
  cq_host->desc_base = ((void*)0);
  cq_host->desc_dma_base = 0;
  return -ENOMEM;
 }

 pr_debug("%s: cqhci: desc-base: 0x%p trans-base: 0x%p\n desc_dma 0x%llx trans_dma: 0x%llx\n",
   mmc_hostname(cq_host->mmc), cq_host->desc_base, cq_host->trans_desc_base,
  (unsigned long long)cq_host->desc_dma_base,
  (unsigned long long)cq_host->trans_desc_dma_base);

 for (; i < (cq_host->num_slots); i++)
  setup_trans_desc(cq_host, i);

 return 0;
}
