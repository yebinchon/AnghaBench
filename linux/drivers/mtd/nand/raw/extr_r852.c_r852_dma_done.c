
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r852_device {scalar_t__ dma_stage; scalar_t__ phys_bounce_buffer; int dma_error; scalar_t__ phys_dma_addr; scalar_t__ dma_dir; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int R852_DMA_ADDR ;
 int R852_DMA_IRQ_ENABLE ;
 int R852_DMA_IRQ_STA ;
 int R852_DMA_LEN ;
 int R852_DMA_SETTINGS ;
 int WARN_ON (int) ;
 int cpu_to_le32 (scalar_t__) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int r852_read_reg_dword (struct r852_device*,int ) ;
 int r852_write_reg_dword (struct r852_device*,int ,int ) ;

__attribute__((used)) static void r852_dma_done(struct r852_device *dev, int error)
{
 WARN_ON(dev->dma_stage == 0);

 r852_write_reg_dword(dev, R852_DMA_IRQ_STA,
   r852_read_reg_dword(dev, R852_DMA_IRQ_STA));

 r852_write_reg_dword(dev, R852_DMA_SETTINGS, 0);
 r852_write_reg_dword(dev, R852_DMA_IRQ_ENABLE, 0);


 r852_write_reg_dword(dev, R852_DMA_ADDR,
  cpu_to_le32(dev->phys_bounce_buffer));
 r852_read_reg_dword(dev, R852_DMA_ADDR);

 dev->dma_error = error;
 dev->dma_stage = 0;

 if (dev->phys_dma_addr && dev->phys_dma_addr != dev->phys_bounce_buffer)
  dma_unmap_single(&dev->pci_dev->dev, dev->phys_dma_addr,
   R852_DMA_LEN,
   dev->dma_dir ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
}
