
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bnxt {scalar_t__ hwrm_cmd_kong_resp_addr; int hwrm_cmd_kong_resp_dma_addr; struct pci_dev* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ dma_alloc_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static int bnxt_alloc_kong_hwrm_resources(struct bnxt *bp)
{
 struct pci_dev *pdev = bp->pdev;

 if (bp->hwrm_cmd_kong_resp_addr)
  return 0;

 bp->hwrm_cmd_kong_resp_addr =
  dma_alloc_coherent(&pdev->dev, PAGE_SIZE,
       &bp->hwrm_cmd_kong_resp_dma_addr,
       GFP_KERNEL);
 if (!bp->hwrm_cmd_kong_resp_addr)
  return -ENOMEM;

 return 0;
}
