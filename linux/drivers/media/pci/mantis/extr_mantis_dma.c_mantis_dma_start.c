
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int risc_dma; scalar_t__ busy_block; scalar_t__ last_block; } ;


 int MANTIS_DCAP_EN ;
 int MANTIS_DEBUG ;
 int MANTIS_DMA_CTL ;
 int MANTIS_FIFO_EN ;
 int MANTIS_GPIF_ADDR ;
 int MANTIS_GPIF_HIFRDWRN ;
 int MANTIS_INT_RISCI ;
 int MANTIS_RISC_EN ;
 int MANTIS_RISC_START ;
 int dprintk (int ,int,char*) ;
 int mantis_risc_program (struct mantis_pci*) ;
 int mantis_unmask_ints (struct mantis_pci*,int ) ;
 int mmread (int ) ;
 int mmwrite (int,int ) ;

void mantis_dma_start(struct mantis_pci *mantis)
{
 dprintk(MANTIS_DEBUG, 1, "Mantis Start DMA engine");

 mantis_risc_program(mantis);
 mmwrite(mantis->risc_dma, MANTIS_RISC_START);
 mmwrite(mmread(MANTIS_GPIF_ADDR) | MANTIS_GPIF_HIFRDWRN, MANTIS_GPIF_ADDR);

 mmwrite(0, MANTIS_DMA_CTL);
 mantis->last_block = mantis->busy_block = 0;

 mantis_unmask_ints(mantis, MANTIS_INT_RISCI);

 mmwrite(MANTIS_FIFO_EN | MANTIS_DCAP_EN
          | MANTIS_RISC_EN, MANTIS_DMA_CTL);

}
