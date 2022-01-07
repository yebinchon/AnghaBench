
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tbnet_ring {struct tbnet_frame* frames; int cons; int ring; } ;
struct TYPE_2__ {int buffer_phy; scalar_t__ size; } ;
struct tbnet_frame {TYPE_1__ frame; } ;
struct tbnet {struct tbnet_ring tx_ring; } ;
struct device {int dummy; } ;


 int DMA_TO_DEVICE ;
 int TBNET_RING_SIZE ;
 int dma_sync_single_for_cpu (struct device*,int ,int ,int ) ;
 struct device* tb_ring_dma_device (int ) ;
 int tbnet_available_buffers (struct tbnet_ring*) ;
 int tbnet_frame_size (struct tbnet_frame*) ;

__attribute__((used)) static struct tbnet_frame *tbnet_get_tx_buffer(struct tbnet *net)
{
 struct tbnet_ring *ring = &net->tx_ring;
 struct device *dma_dev = tb_ring_dma_device(ring->ring);
 struct tbnet_frame *tf;
 unsigned int index;

 if (!tbnet_available_buffers(ring))
  return ((void*)0);

 index = ring->cons++ & (TBNET_RING_SIZE - 1);

 tf = &ring->frames[index];
 tf->frame.size = 0;

 dma_sync_single_for_cpu(dma_dev, tf->frame.buffer_phy,
    tbnet_frame_size(tf), DMA_TO_DEVICE);

 return tf;
}
