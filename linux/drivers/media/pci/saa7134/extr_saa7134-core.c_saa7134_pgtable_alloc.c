
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_pgtable {int dma; int * cpu; int size; } ;
struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;
typedef int __le32 ;


 int ENOMEM ;
 int SAA7134_PGTABLE_SIZE ;
 int * pci_alloc_consistent (struct pci_dev*,int ,int *) ;

int saa7134_pgtable_alloc(struct pci_dev *pci, struct saa7134_pgtable *pt)
{
 __le32 *cpu;
 dma_addr_t dma_addr = 0;

 cpu = pci_alloc_consistent(pci, SAA7134_PGTABLE_SIZE, &dma_addr);
 if (((void*)0) == cpu)
  return -ENOMEM;
 pt->size = SAA7134_PGTABLE_SIZE;
 pt->cpu = cpu;
 pt->dma = dma_addr;
 return 0;
}
