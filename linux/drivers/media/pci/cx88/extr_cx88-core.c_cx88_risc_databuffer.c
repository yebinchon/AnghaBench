
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
struct pci_dev {int dummy; } ;
struct cx88_riscmem {int size; int * cpu; int * jmp; scalar_t__ dma; } ;
typedef int __le32 ;


 int ENOMEM ;
 int NO_SYNC_LINE ;
 unsigned int PAGE_SIZE ;
 int WARN_ON (int) ;
 int * cx88_risc_field (int *,struct scatterlist*,int ,int ,unsigned int,int ,unsigned int,unsigned int,int) ;
 int * pci_zalloc_consistent (struct pci_dev*,int,scalar_t__*) ;

int cx88_risc_databuffer(struct pci_dev *pci, struct cx88_riscmem *risc,
    struct scatterlist *sglist, unsigned int bpl,
    unsigned int lines, unsigned int lpi)
{
 u32 instructions;
 __le32 *rp;







 instructions = 1 + (bpl * lines) / PAGE_SIZE + lines;
 instructions += 3;
 risc->size = instructions * 8;
 risc->dma = 0;
 risc->cpu = pci_zalloc_consistent(pci, risc->size, &risc->dma);
 if (!risc->cpu)
  return -ENOMEM;


 rp = risc->cpu;
 rp = cx88_risc_field(rp, sglist, 0, NO_SYNC_LINE, bpl, 0,
        lines, lpi, !lpi);


 risc->jmp = rp;
 WARN_ON((risc->jmp - risc->cpu + 2) * sizeof(*risc->cpu) > risc->size);
 return 0;
}
