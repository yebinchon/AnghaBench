
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bnxt {scalar_t__ hwrm_short_cmd_req_addr; int hwrm_short_cmd_req_dma_addr; int hwrm_max_ext_req_len; struct pci_dev* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ dma_alloc_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static int bnxt_alloc_hwrm_short_cmd_req(struct bnxt *bp)
{
 struct pci_dev *pdev = bp->pdev;

 if (bp->hwrm_short_cmd_req_addr)
  return 0;

 bp->hwrm_short_cmd_req_addr =
  dma_alloc_coherent(&pdev->dev, bp->hwrm_max_ext_req_len,
       &bp->hwrm_short_cmd_req_dma_addr,
       GFP_KERNEL);
 if (!bp->hwrm_short_cmd_req_addr)
  return -ENOMEM;

 return 0;
}
