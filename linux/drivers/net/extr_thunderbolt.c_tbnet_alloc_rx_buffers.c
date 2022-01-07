
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tbnet_ring {int prod; int ring; struct tbnet_frame* frames; } ;
struct TYPE_2__ {int buffer_phy; } ;
struct tbnet_frame {TYPE_1__ frame; int dev; scalar_t__ page; } ;
struct tbnet {int dev; struct tbnet_ring rx_ring; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int TBNET_RING_SIZE ;
 int TBNET_RX_PAGE_ORDER ;
 int TBNET_RX_PAGE_SIZE ;
 scalar_t__ dev_alloc_pages (int ) ;
 int dma_map_page (struct device*,scalar_t__,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 struct device* tb_ring_dma_device (int ) ;
 int tb_ring_rx (int ,TYPE_1__*) ;
 int tbnet_free_buffers (struct tbnet_ring*) ;

__attribute__((used)) static int tbnet_alloc_rx_buffers(struct tbnet *net, unsigned int nbuffers)
{
 struct tbnet_ring *ring = &net->rx_ring;
 int ret;

 while (nbuffers--) {
  struct device *dma_dev = tb_ring_dma_device(ring->ring);
  unsigned int index = ring->prod & (TBNET_RING_SIZE - 1);
  struct tbnet_frame *tf = &ring->frames[index];
  dma_addr_t dma_addr;

  if (tf->page)
   break;





  tf->page = dev_alloc_pages(TBNET_RX_PAGE_ORDER);
  if (!tf->page) {
   ret = -ENOMEM;
   goto err_free;
  }

  dma_addr = dma_map_page(dma_dev, tf->page, 0,
     TBNET_RX_PAGE_SIZE, DMA_FROM_DEVICE);
  if (dma_mapping_error(dma_dev, dma_addr)) {
   ret = -ENOMEM;
   goto err_free;
  }

  tf->frame.buffer_phy = dma_addr;
  tf->dev = net->dev;

  tb_ring_rx(ring->ring, &tf->frame);

  ring->prod++;
 }

 return 0;

err_free:
 tbnet_free_buffers(ring);
 return ret;
}
