
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdp_umem {unsigned int npgs; TYPE_2__* pages; int * pgs; } ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {scalar_t__ dma; } ;
struct TYPE_3__ {struct device dev; } ;


 int DMA_BIDIRECTIONAL ;
 int I40E_RX_DMA_ATTR ;
 int PAGE_SIZE ;
 scalar_t__ dma_map_page_attrs (struct device*,int ,int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;
 int dma_unmap_page_attrs (struct device*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int i40e_xsk_umem_dma_map(struct i40e_vsi *vsi, struct xdp_umem *umem)
{
 struct i40e_pf *pf = vsi->back;
 struct device *dev;
 unsigned int i, j;
 dma_addr_t dma;

 dev = &pf->pdev->dev;
 for (i = 0; i < umem->npgs; i++) {
  dma = dma_map_page_attrs(dev, umem->pgs[i], 0, PAGE_SIZE,
      DMA_BIDIRECTIONAL, I40E_RX_DMA_ATTR);
  if (dma_mapping_error(dev, dma))
   goto out_unmap;

  umem->pages[i].dma = dma;
 }

 return 0;

out_unmap:
 for (j = 0; j < i; j++) {
  dma_unmap_page_attrs(dev, umem->pages[i].dma, PAGE_SIZE,
         DMA_BIDIRECTIONAL, I40E_RX_DMA_ATTR);
  umem->pages[i].dma = 0;
 }

 return -1;
}
