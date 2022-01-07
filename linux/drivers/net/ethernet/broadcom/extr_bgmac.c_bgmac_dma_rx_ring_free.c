
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bgmac_slot_info {scalar_t__ dma_addr; int buf; } ;
struct bgmac_dma_ring {struct bgmac_slot_info* slots; } ;
struct bgmac {struct device* dma_dev; } ;


 int BGMAC_RX_BUF_SIZE ;
 int BGMAC_RX_RING_SLOTS ;
 int DMA_FROM_DEVICE ;
 int dma_unmap_single (struct device*,scalar_t__,int ,int ) ;
 int put_page (int ) ;
 int virt_to_head_page (int ) ;

__attribute__((used)) static void bgmac_dma_rx_ring_free(struct bgmac *bgmac,
       struct bgmac_dma_ring *ring)
{
 struct device *dma_dev = bgmac->dma_dev;
 struct bgmac_slot_info *slot;
 int i;

 for (i = 0; i < BGMAC_RX_RING_SLOTS; i++) {
  slot = &ring->slots[i];
  if (!slot->dma_addr)
   continue;

  dma_unmap_single(dma_dev, slot->dma_addr,
     BGMAC_RX_BUF_SIZE,
     DMA_FROM_DEVICE);
  put_page(virt_to_head_page(slot->buf));
  slot->dma_addr = 0;
 }
}
