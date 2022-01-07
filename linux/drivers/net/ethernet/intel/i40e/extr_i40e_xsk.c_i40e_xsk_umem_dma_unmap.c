
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdp_umem {unsigned int npgs; TYPE_1__* pages; } ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {TYPE_2__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {scalar_t__ dma; } ;


 int DMA_BIDIRECTIONAL ;
 int I40E_RX_DMA_ATTR ;
 int PAGE_SIZE ;
 int dma_unmap_page_attrs (struct device*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void i40e_xsk_umem_dma_unmap(struct i40e_vsi *vsi, struct xdp_umem *umem)
{
 struct i40e_pf *pf = vsi->back;
 struct device *dev;
 unsigned int i;

 dev = &pf->pdev->dev;

 for (i = 0; i < umem->npgs; i++) {
  dma_unmap_page_attrs(dev, umem->pages[i].dma, PAGE_SIZE,
         DMA_BIDIRECTIONAL, I40E_RX_DMA_ATTR);

  umem->pages[i].dma = 0;
 }
}
