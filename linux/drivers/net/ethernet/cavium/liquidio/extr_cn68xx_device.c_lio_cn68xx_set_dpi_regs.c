
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int CN6XXX_DPI_CTL ;
 int CN6XXX_DPI_DMA_CONTROL ;
 int CN6XXX_DPI_DMA_CTL_MASK ;
 int CN6XXX_DPI_DMA_ENG_BUF (int) ;
 int CN6XXX_DPI_DMA_ENG_ENB (int) ;
 int dev_dbg (int *,char*,int,...) ;
 int lio_pci_readq (struct octeon_device*,int ) ;
 int lio_pci_writeq (struct octeon_device*,int,int ) ;

__attribute__((used)) static void lio_cn68xx_set_dpi_regs(struct octeon_device *oct)
{
 u32 i;
 u32 fifo_sizes[6] = { 3, 3, 1, 1, 1, 8 };

 lio_pci_writeq(oct, CN6XXX_DPI_DMA_CTL_MASK, CN6XXX_DPI_DMA_CONTROL);
 dev_dbg(&oct->pci_dev->dev, "DPI_DMA_CONTROL: 0x%016llx\n",
  lio_pci_readq(oct, CN6XXX_DPI_DMA_CONTROL));

 for (i = 0; i < 6; i++) {




  lio_pci_writeq(oct, 0, CN6XXX_DPI_DMA_ENG_ENB(i));
  lio_pci_writeq(oct, fifo_sizes[i], CN6XXX_DPI_DMA_ENG_BUF(i));
  dev_dbg(&oct->pci_dev->dev, "DPI_ENG_BUF%d: 0x%016llx\n", i,
   lio_pci_readq(oct, CN6XXX_DPI_DMA_ENG_BUF(i)));
 }





 lio_pci_writeq(oct, 1, CN6XXX_DPI_CTL);
 dev_dbg(&oct->pci_dev->dev, "DPI_CTL: 0x%016llx\n",
  lio_pci_readq(oct, CN6XXX_DPI_CTL));
}
