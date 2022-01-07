
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bnxt {int * hwrm_short_cmd_req_addr; int hwrm_short_cmd_req_dma_addr; int hwrm_max_ext_req_len; struct pci_dev* pdev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void bnxt_free_hwrm_short_cmd_req(struct bnxt *bp)
{
 if (bp->hwrm_short_cmd_req_addr) {
  struct pci_dev *pdev = bp->pdev;

  dma_free_coherent(&pdev->dev, bp->hwrm_max_ext_req_len,
      bp->hwrm_short_cmd_req_addr,
      bp->hwrm_short_cmd_req_dma_addr);
  bp->hwrm_short_cmd_req_addr = ((void*)0);
 }
}
