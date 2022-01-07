
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {void* risc_cpu; scalar_t__ risc_dma; int pdev; void* buf_cpu; scalar_t__ buf_dma; } ;


 int ENOMEM ;
 int MANTIS_BUF_SIZE ;
 int MANTIS_ERROR ;
 int MANTIS_RISC_SIZE ;
 int dprintk (int ,int,char*,...) ;
 int mantis_dma_exit (struct mantis_pci*) ;
 void* pci_alloc_consistent (int ,int ,scalar_t__*) ;

__attribute__((used)) static inline int mantis_alloc_buffers(struct mantis_pci *mantis)
{
 if (!mantis->buf_cpu) {
  mantis->buf_cpu = pci_alloc_consistent(mantis->pdev,
             MANTIS_BUF_SIZE,
             &mantis->buf_dma);
  if (!mantis->buf_cpu) {
   dprintk(MANTIS_ERROR, 1,
    "DMA buffer allocation failed");

   goto err;
  }
  dprintk(MANTIS_ERROR, 1,
   "DMA=0x%lx cpu=0x%p size=%d",
   (unsigned long) mantis->buf_dma,
   mantis->buf_cpu, MANTIS_BUF_SIZE);
 }
 if (!mantis->risc_cpu) {
  mantis->risc_cpu = pci_alloc_consistent(mantis->pdev,
       MANTIS_RISC_SIZE,
       &mantis->risc_dma);

  if (!mantis->risc_cpu) {
   dprintk(MANTIS_ERROR, 1,
    "RISC program allocation failed");

   mantis_dma_exit(mantis);

   goto err;
  }
  dprintk(MANTIS_ERROR, 1,
   "RISC=0x%lx cpu=0x%p size=%lx",
   (unsigned long) mantis->risc_dma,
   mantis->risc_cpu, MANTIS_RISC_SIZE);
 }

 return 0;
err:
 dprintk(MANTIS_ERROR, 1, "Out of memory (?) .....");
 return -ENOMEM;
}
