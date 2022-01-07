
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cx25821_riscmem {unsigned int size; int dma; int * cpu; } ;
typedef int dma_addr_t ;
typedef int __le32 ;


 int ENOMEM ;
 int pci_free_consistent (struct pci_dev*,unsigned int,int *,int ) ;
 int * pci_zalloc_consistent (struct pci_dev*,unsigned int,int *) ;

int cx25821_riscmem_alloc(struct pci_dev *pci,
         struct cx25821_riscmem *risc,
         unsigned int size)
{
 __le32 *cpu;
 dma_addr_t dma = 0;

 if (((void*)0) != risc->cpu && risc->size < size)
  pci_free_consistent(pci, risc->size, risc->cpu, risc->dma);
 if (((void*)0) == risc->cpu) {
  cpu = pci_zalloc_consistent(pci, size, &dma);
  if (((void*)0) == cpu)
   return -ENOMEM;
  risc->cpu = cpu;
  risc->dma = dma;
  risc->size = size;
 }
 return 0;
}
