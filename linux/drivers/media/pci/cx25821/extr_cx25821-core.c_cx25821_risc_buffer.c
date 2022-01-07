
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
struct pci_dev {int dummy; } ;
struct cx25821_riscmem {int size; int * cpu; int * jmp; } ;
typedef int __le32 ;


 int BUG_ON (int) ;
 unsigned int PAGE_SIZE ;
 unsigned int UNSET ;
 int * cx25821_risc_field (int *,struct scatterlist*,unsigned int,int,unsigned int,unsigned int,unsigned int,int) ;
 int cx25821_riscmem_alloc (struct pci_dev*,struct cx25821_riscmem*,int) ;

int cx25821_risc_buffer(struct pci_dev *pci, struct cx25821_riscmem *risc,
   struct scatterlist *sglist, unsigned int top_offset,
   unsigned int bottom_offset, unsigned int bpl,
   unsigned int padding, unsigned int lines)
{
 u32 instructions;
 u32 fields;
 __le32 *rp;
 int rc;

 fields = 0;
 if (UNSET != top_offset)
  fields++;
 if (UNSET != bottom_offset)
  fields++;






 instructions = fields * (1 + ((bpl + padding) * lines) / PAGE_SIZE +
   lines);
 instructions += 5;
 rc = cx25821_riscmem_alloc(pci, risc, instructions * 12);

 if (rc < 0)
  return rc;


 rp = risc->cpu;

 if (UNSET != top_offset) {
  rp = cx25821_risc_field(rp, sglist, top_offset, 0, bpl, padding,
     lines, 1);
 }

 if (UNSET != bottom_offset) {
  rp = cx25821_risc_field(rp, sglist, bottom_offset, 0x200, bpl,
     padding, lines, UNSET == top_offset);
 }


 risc->jmp = rp;
 BUG_ON((risc->jmp - risc->cpu + 3) * sizeof(*risc->cpu) > risc->size);

 return 0;
}
