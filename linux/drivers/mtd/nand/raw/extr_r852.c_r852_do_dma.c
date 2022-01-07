
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void uint8_t ;
struct r852_device {int dma_dir; int dma_stage; void* bounce_buffer; int irqlock; int phys_bounce_buffer; int phys_dma_addr; TYPE_1__* pci_dev; int dma_state; int dma_done; scalar_t__ dma_error; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_INTERNAL ;
 int DMA_MEMORY ;
 int DMA_TO_DEVICE ;
 int R852_DMA_LEN ;
 int dbg_verbose (char*,...) ;
 int dma_map_single (int *,void*,int,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int memcpy (void*,void*,int) ;
 int r852_dma_done (struct r852_device*,int) ;
 int r852_dma_enable (struct r852_device*) ;
 int r852_dma_wait (struct r852_device*) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void r852_do_dma(struct r852_device *dev, uint8_t *buf, int do_read)
{
 int bounce = 0;
 unsigned long flags;
 int error;

 dev->dma_error = 0;


 dev->dma_dir = do_read;
 dev->dma_stage = 1;
 reinit_completion(&dev->dma_done);

 dbg_verbose("doing dma %s ", do_read ? "read" : "write");



 dev->dma_state = do_read ? DMA_INTERNAL : DMA_MEMORY;


 if ((unsigned long)buf & (R852_DMA_LEN-1))
  bounce = 1;

 if (!bounce) {
  dev->phys_dma_addr = dma_map_single(&dev->pci_dev->dev, buf,
   R852_DMA_LEN,
   do_read ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
  if (dma_mapping_error(&dev->pci_dev->dev, dev->phys_dma_addr))
   bounce = 1;
 }

 if (bounce) {
  dbg_verbose("dma: using bounce buffer");
  dev->phys_dma_addr = dev->phys_bounce_buffer;
  if (!do_read)
   memcpy(dev->bounce_buffer, buf, R852_DMA_LEN);
 }


 spin_lock_irqsave(&dev->irqlock, flags);
 r852_dma_enable(dev);
 spin_unlock_irqrestore(&dev->irqlock, flags);


 error = r852_dma_wait(dev);

 if (error) {
  r852_dma_done(dev, error);
  return;
 }

 if (do_read && bounce)
  memcpy((void *)buf, dev->bounce_buffer, R852_DMA_LEN);
}
