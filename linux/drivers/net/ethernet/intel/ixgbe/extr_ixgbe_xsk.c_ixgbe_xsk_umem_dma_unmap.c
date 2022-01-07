
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdp_umem {unsigned int npgs; TYPE_2__* pages; } ;
struct ixgbe_adapter {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ dma; } ;
struct TYPE_3__ {struct device dev; } ;


 int DMA_BIDIRECTIONAL ;
 int IXGBE_RX_DMA_ATTR ;
 int PAGE_SIZE ;
 int dma_unmap_page_attrs (struct device*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void ixgbe_xsk_umem_dma_unmap(struct ixgbe_adapter *adapter,
         struct xdp_umem *umem)
{
 struct device *dev = &adapter->pdev->dev;
 unsigned int i;

 for (i = 0; i < umem->npgs; i++) {
  dma_unmap_page_attrs(dev, umem->pages[i].dma, PAGE_SIZE,
         DMA_BIDIRECTIONAL, IXGBE_RX_DMA_ATTR);

  umem->pages[i].dma = 0;
 }
}
