
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
typedef int __le32 ;


 unsigned int RISC_INLINE ;
 unsigned int RISC_JUMP ;
 unsigned int RISC_LINESTART ;
 unsigned int RISC_SYNCE ;
 unsigned int RISC_SYNCO ;
 void* cpu_to_le32 (unsigned int) ;
 unsigned int sg_dma_address (struct scatterlist*) ;
 unsigned int sg_dma_len (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static __le32 *tw68_risc_field(__le32 *rp, struct scatterlist *sglist,
       unsigned int offset, u32 sync_line,
       unsigned int bpl, unsigned int padding,
       unsigned int lines, bool jump)
{
 struct scatterlist *sg;
 unsigned int line, todo, done;

 if (jump) {
  *(rp++) = cpu_to_le32(RISC_JUMP);
  *(rp++) = 0;
 }


 if (sync_line == 1)
  *(rp++) = cpu_to_le32(RISC_SYNCO);
 else
  *(rp++) = cpu_to_le32(RISC_SYNCE);
 *(rp++) = 0;


 sg = sglist;
 for (line = 0; line < lines; line++) {

  while (offset && offset >= sg_dma_len(sg)) {
   offset -= sg_dma_len(sg);
   sg = sg_next(sg);
  }
  if (bpl <= sg_dma_len(sg) - offset) {

   *(rp++) = cpu_to_le32(RISC_LINESTART |
                                bpl);
   *(rp++) = cpu_to_le32(sg_dma_address(sg) + offset);
   offset += bpl;
  } else {






   todo = bpl;

   done = (sg_dma_len(sg) - offset);
   *(rp++) = cpu_to_le32(RISC_LINESTART |
      (7 << 24) |
      done);
   *(rp++) = cpu_to_le32(sg_dma_address(sg) + offset);
   todo -= done;
   sg = sg_next(sg);

   while (todo > sg_dma_len(sg)) {
    *(rp++) = cpu_to_le32(RISC_INLINE |
      (done << 12) |
      sg_dma_len(sg));
    *(rp++) = cpu_to_le32(sg_dma_address(sg));
    todo -= sg_dma_len(sg);
    sg = sg_next(sg);
    done += sg_dma_len(sg);
   }
   if (todo) {

    *(rp++) = cpu_to_le32(RISC_INLINE |
       (done << 12) |
       todo);
    *(rp++) = cpu_to_le32(sg_dma_address(sg));
   }
   offset = todo;
  }
  offset += padding;
 }

 return rp;
}
