
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
struct pci_dev {int dummy; } ;
struct cx23885_riscmem {int size; int * cpu; int * jmp; int dma; } ;
typedef int __le32 ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int NO_SYNC_LINE ;
 unsigned int PAGE_SIZE ;
 int * cx23885_risc_field (int *,struct scatterlist*,int ,int ,unsigned int,int ,unsigned int,unsigned int,int) ;
 int * pci_alloc_consistent (struct pci_dev*,int,int *) ;

int cx23885_risc_databuffer(struct pci_dev *pci,
       struct cx23885_riscmem *risc,
       struct scatterlist *sglist,
       unsigned int bpl,
       unsigned int lines, unsigned int lpi)
{
 u32 instructions;
 __le32 *rp;






 instructions = 1 + (bpl * lines) / PAGE_SIZE + lines;
 instructions += 4;

 risc->size = instructions * 12;
 risc->cpu = pci_alloc_consistent(pci, risc->size, &risc->dma);
 if (risc->cpu == ((void*)0))
  return -ENOMEM;


 rp = risc->cpu;
 rp = cx23885_risc_field(rp, sglist, 0, NO_SYNC_LINE,
    bpl, 0, lines, lpi, lpi == 0);


 risc->jmp = rp;
 BUG_ON((risc->jmp - risc->cpu + 2) * sizeof(*risc->cpu) > risc->size);
 return 0;
}
