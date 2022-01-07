
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct btcx_riscmem {scalar_t__ dma; int * cpu; int size; } ;


 int dprintk (char*,int ,unsigned long) ;
 int memcnt ;
 int memset (struct btcx_riscmem*,int ,int) ;
 int pci_free_consistent (struct pci_dev*,int ,int *,scalar_t__) ;

void btcx_riscmem_free(struct pci_dev *pci,
         struct btcx_riscmem *risc)
{
 if (((void*)0) == risc->cpu)
  return;

 memcnt--;
 dprintk("btcx: riscmem free [%d] dma=%lx\n",
  memcnt, (unsigned long)risc->dma);

 pci_free_consistent(pci, risc->size, risc->cpu, risc->dma);
 memset(risc,0,sizeof(*risc));
}
