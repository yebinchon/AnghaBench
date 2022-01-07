
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_wldev {TYPE_1__* dev; } ;
struct b43_pio_rxqueue {scalar_t__ mmio_base; int rev; struct b43_wldev* dev; } ;
struct TYPE_2__ {int core_rev; } ;


 int GFP_KERNEL ;
 int b43_dma_direct_fifo_rx (struct b43_wldev*,unsigned int,int) ;
 scalar_t__ index_to_pioqueue_base (struct b43_wldev*,unsigned int) ;
 struct b43_pio_rxqueue* kzalloc (int,int ) ;
 scalar_t__ pio_rxqueue_offset (struct b43_wldev*) ;

__attribute__((used)) static struct b43_pio_rxqueue *b43_setup_pioqueue_rx(struct b43_wldev *dev,
           unsigned int index)
{
 struct b43_pio_rxqueue *q;

 q = kzalloc(sizeof(*q), GFP_KERNEL);
 if (!q)
  return ((void*)0);
 q->dev = dev;
 q->rev = dev->dev->core_rev;
 q->mmio_base = index_to_pioqueue_base(dev, index) +
         pio_rxqueue_offset(dev);


 b43_dma_direct_fifo_rx(dev, index, 1);

 return q;
}
