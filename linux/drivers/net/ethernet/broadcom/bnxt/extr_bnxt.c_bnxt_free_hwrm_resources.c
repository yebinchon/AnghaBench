
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bnxt {int * hwrm_cmd_kong_resp_addr; int hwrm_cmd_kong_resp_dma_addr; int * hwrm_cmd_resp_addr; int hwrm_cmd_resp_dma_addr; struct pci_dev* pdev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static void bnxt_free_hwrm_resources(struct bnxt *bp)
{
 struct pci_dev *pdev = bp->pdev;

 if (bp->hwrm_cmd_resp_addr) {
  dma_free_coherent(&pdev->dev, PAGE_SIZE, bp->hwrm_cmd_resp_addr,
      bp->hwrm_cmd_resp_dma_addr);
  bp->hwrm_cmd_resp_addr = ((void*)0);
 }

 if (bp->hwrm_cmd_kong_resp_addr) {
  dma_free_coherent(&pdev->dev, PAGE_SIZE,
      bp->hwrm_cmd_kong_resp_addr,
      bp->hwrm_cmd_kong_resp_dma_addr);
  bp->hwrm_cmd_kong_resp_addr = ((void*)0);
 }
}
