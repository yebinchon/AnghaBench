
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
 unsigned int PAGE_SIZE ;
 unsigned int UNSET ;
 int WARN_ON (int) ;
 int * cx88_risc_field (int *,struct scatterlist*,unsigned int,int,unsigned int,unsigned int,unsigned int,int ,int) ;
 int * pci_zalloc_consistent (struct pci_dev*,int,scalar_t__*) ;

int cx88_risc_buffer(struct pci_dev *pci, struct cx88_riscmem *risc,
       struct scatterlist *sglist,
       unsigned int top_offset, unsigned int bottom_offset,
       unsigned int bpl, unsigned int padding, unsigned int lines)
{
 u32 instructions, fields;
 __le32 *rp;

 fields = 0;
 if (top_offset != UNSET)
  fields++;
 if (bottom_offset != UNSET)
  fields++;







 instructions = fields * (1 + ((bpl + padding) * lines) /
      PAGE_SIZE + lines);
 instructions += 4;
 risc->size = instructions * 8;
 risc->dma = 0;
 risc->cpu = pci_zalloc_consistent(pci, risc->size, &risc->dma);
 if (!risc->cpu)
  return -ENOMEM;


 rp = risc->cpu;
 if (top_offset != UNSET)
  rp = cx88_risc_field(rp, sglist, top_offset, 0,
         bpl, padding, lines, 0, 1);
 if (bottom_offset != UNSET)
  rp = cx88_risc_field(rp, sglist, bottom_offset, 0x200,
         bpl, padding, lines, 0,
         top_offset == UNSET);


 risc->jmp = rp;
 WARN_ON((risc->jmp - risc->cpu + 2) * sizeof(*risc->cpu) > risc->size);
 return 0;
}
