
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
 unsigned int PAGE_SIZE ;
 unsigned int UNSET ;
 int * cx23885_risc_field (int *,struct scatterlist*,unsigned int,int,unsigned int,unsigned int,unsigned int,int ,int) ;
 int * pci_alloc_consistent (struct pci_dev*,int,int *) ;

int cx23885_risc_vbibuffer(struct pci_dev *pci, struct cx23885_riscmem *risc,
   struct scatterlist *sglist, unsigned int top_offset,
   unsigned int bottom_offset, unsigned int bpl,
   unsigned int padding, unsigned int lines)
{
 u32 instructions, fields;
 __le32 *rp;

 fields = 0;
 if (UNSET != top_offset)
  fields++;
 if (UNSET != bottom_offset)
  fields++;






 instructions = fields * (1 + ((bpl + padding) * lines)
  / PAGE_SIZE + lines);
 instructions += 5;
 risc->size = instructions * 12;
 risc->cpu = pci_alloc_consistent(pci, risc->size, &risc->dma);
 if (risc->cpu == ((void*)0))
  return -ENOMEM;

 rp = risc->cpu;



 if (UNSET != top_offset)
  rp = cx23885_risc_field(rp, sglist, top_offset, 0,
     bpl, padding, lines, 0, 1);

 if (UNSET != bottom_offset)
  rp = cx23885_risc_field(rp, sglist, bottom_offset, 0x200,
     bpl, padding, lines, 0, UNSET == top_offset);




 risc->jmp = rp;
 BUG_ON((risc->jmp - risc->cpu + 2) * sizeof(*risc->cpu) > risc->size);
 return 0;
}
