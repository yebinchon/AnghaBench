
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int dummy; } ;


 int MANTIS_DCAP_EN ;
 int MANTIS_DEBUG ;
 int MANTIS_DMA_CTL ;
 int MANTIS_FIFO_EN ;
 int MANTIS_GPIF_ADDR ;
 int MANTIS_GPIF_HIFRDWRN ;
 int MANTIS_INT_RISCEN ;
 int MANTIS_INT_RISCI ;
 int MANTIS_INT_STAT ;
 int MANTIS_RISC_EN ;
 int dprintk (int ,int,char*) ;
 int mantis_mask_ints (struct mantis_pci*,int) ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;

void mantis_dma_stop(struct mantis_pci *mantis)
{
 dprintk(MANTIS_DEBUG, 1, "Mantis Stop DMA engine");

 mmwrite((mmread(MANTIS_GPIF_ADDR) & (~(MANTIS_GPIF_HIFRDWRN))), MANTIS_GPIF_ADDR);

 mmwrite((mmread(MANTIS_DMA_CTL) & ~(MANTIS_FIFO_EN |
         MANTIS_DCAP_EN |
         MANTIS_RISC_EN)), MANTIS_DMA_CTL);

 mmwrite(mmread(MANTIS_INT_STAT), MANTIS_INT_STAT);

 mantis_mask_ints(mantis, MANTIS_INT_RISCI | MANTIS_INT_RISCEN);
}
