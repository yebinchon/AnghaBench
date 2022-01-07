
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int * risc_cpu; scalar_t__ risc_dma; int pdev; int * buf_cpu; scalar_t__ buf_dma; } ;


 int MANTIS_BUF_SIZE ;
 int MANTIS_ERROR ;
 int MANTIS_RISC_SIZE ;
 int dprintk (int ,int,char*,unsigned long,int *,int ) ;
 int pci_free_consistent (int ,int ,int *,scalar_t__) ;

int mantis_dma_exit(struct mantis_pci *mantis)
{
 if (mantis->buf_cpu) {
  dprintk(MANTIS_ERROR, 1,
   "DMA=0x%lx cpu=0x%p size=%d",
   (unsigned long) mantis->buf_dma,
    mantis->buf_cpu,
    MANTIS_BUF_SIZE);

  pci_free_consistent(mantis->pdev, MANTIS_BUF_SIZE,
        mantis->buf_cpu, mantis->buf_dma);

  mantis->buf_cpu = ((void*)0);
 }
 if (mantis->risc_cpu) {
  dprintk(MANTIS_ERROR, 1,
   "RISC=0x%lx cpu=0x%p size=%lx",
   (unsigned long) mantis->risc_dma,
   mantis->risc_cpu,
   MANTIS_RISC_SIZE);

  pci_free_consistent(mantis->pdev, MANTIS_RISC_SIZE,
        mantis->risc_cpu, mantis->risc_dma);

  mantis->risc_cpu = ((void*)0);
 }

 return 0;
}
