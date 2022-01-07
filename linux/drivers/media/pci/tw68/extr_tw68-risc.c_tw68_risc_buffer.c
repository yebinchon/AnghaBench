
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tw68_buf {int size; int * cpu; int * jmp; scalar_t__ dma; } ;
struct scatterlist {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef int __le32 ;


 int BUG_ON (int) ;
 int ENOMEM ;
 unsigned int PAGE_SIZE ;
 unsigned int UNSET ;
 int cpu_to_le32 (scalar_t__) ;
 int * pci_alloc_consistent (struct pci_dev*,int,scalar_t__*) ;
 int * tw68_risc_field (int *,struct scatterlist*,unsigned int,int,unsigned int,unsigned int,unsigned int,int) ;

int tw68_risc_buffer(struct pci_dev *pci,
   struct tw68_buf *buf,
   struct scatterlist *sglist,
   unsigned int top_offset,
   unsigned int bottom_offset,
   unsigned int bpl,
   unsigned int padding,
   unsigned int lines)
{
 u32 instructions, fields;
 __le32 *rp;

 fields = 0;
 if (UNSET != top_offset)
  fields++;
 if (UNSET != bottom_offset)
  fields++;






 instructions = fields * (1 + (((bpl + padding) * lines) /
    PAGE_SIZE) + lines) + 4;
 buf->size = instructions * 8;
 buf->cpu = pci_alloc_consistent(pci, buf->size, &buf->dma);
 if (buf->cpu == ((void*)0))
  return -ENOMEM;


 rp = buf->cpu;
 if (UNSET != top_offset)
  rp = tw68_risc_field(rp, sglist, top_offset, 1,
         bpl, padding, lines, 1);
 if (UNSET != bottom_offset)
  rp = tw68_risc_field(rp, sglist, bottom_offset, 2,
         bpl, padding, lines, top_offset == UNSET);


 buf->jmp = rp;
 buf->cpu[1] = cpu_to_le32(buf->dma + 8);

 BUG_ON((buf->jmp - buf->cpu + 2) * sizeof(buf->cpu[0]) > buf->size);
 return 0;
}
