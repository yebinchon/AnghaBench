
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tbnet_ring {unsigned int prod; scalar_t__ cons; struct tbnet_frame* frames; int ring; } ;
struct TYPE_2__ {int eof; int sof; int callback; int buffer_phy; } ;
struct tbnet_frame {TYPE_1__ frame; int dev; int * page; } ;
struct tbnet {int dev; struct tbnet_ring tx_ring; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TBIP_PDF_FRAME_END ;
 int TBIP_PDF_FRAME_START ;
 int TBNET_FRAME_SIZE ;
 unsigned int TBNET_RING_SIZE ;
 int __free_page (int *) ;
 int * alloc_page (int ) ;
 int dma_map_page (struct device*,int *,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 struct device* tb_ring_dma_device (int ) ;
 int tbnet_free_buffers (struct tbnet_ring*) ;
 int tbnet_tx_callback ;

__attribute__((used)) static int tbnet_alloc_tx_buffers(struct tbnet *net)
{
 struct tbnet_ring *ring = &net->tx_ring;
 struct device *dma_dev = tb_ring_dma_device(ring->ring);
 unsigned int i;

 for (i = 0; i < TBNET_RING_SIZE; i++) {
  struct tbnet_frame *tf = &ring->frames[i];
  dma_addr_t dma_addr;

  tf->page = alloc_page(GFP_KERNEL);
  if (!tf->page) {
   tbnet_free_buffers(ring);
   return -ENOMEM;
  }

  dma_addr = dma_map_page(dma_dev, tf->page, 0, TBNET_FRAME_SIZE,
     DMA_TO_DEVICE);
  if (dma_mapping_error(dma_dev, dma_addr)) {
   __free_page(tf->page);
   tf->page = ((void*)0);
   tbnet_free_buffers(ring);
   return -ENOMEM;
  }

  tf->dev = net->dev;
  tf->frame.buffer_phy = dma_addr;
  tf->frame.callback = tbnet_tx_callback;
  tf->frame.sof = TBIP_PDF_FRAME_START;
  tf->frame.eof = TBIP_PDF_FRAME_END;
 }

 ring->cons = 0;
 ring->prod = TBNET_RING_SIZE - 1;

 return 0;
}
