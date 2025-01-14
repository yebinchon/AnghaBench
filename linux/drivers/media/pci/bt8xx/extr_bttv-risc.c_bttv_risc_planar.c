
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {int pci; } ;
struct bttv {scalar_t__ opt_vcr_hack; TYPE_1__ c; } ;
struct btcx_riscmem {int size; int * cpu; int * jmp; } ;
typedef int __le32 ;


 unsigned int BT848_FIFO_STATUS_FM3 ;
 unsigned int BT848_RISC_EOL ;
 unsigned int BT848_RISC_SOL ;
 unsigned int BT848_RISC_SYNC ;
 unsigned int BT848_RISC_WRITE123 ;
 unsigned int BT848_RISC_WRITE1S23 ;
 int BUG_ON (int) ;
 int PAGE_SIZE ;
 unsigned int VCR_HACK_LINES ;
 int btcx_riscmem_alloc (int ,struct btcx_riscmem*,unsigned int) ;
 void* cpu_to_le32 (unsigned int) ;
 unsigned int sg_dma_address (struct scatterlist*) ;
 unsigned int sg_dma_len (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static int
bttv_risc_planar(struct bttv *btv, struct btcx_riscmem *risc,
   struct scatterlist *sglist,
   unsigned int yoffset, unsigned int ybpl,
   unsigned int ypadding, unsigned int ylines,
   unsigned int uoffset, unsigned int voffset,
   unsigned int hshift, unsigned int vshift,
   unsigned int cpadding)
{
 unsigned int instructions,line,todo,ylen,chroma;
 __le32 *rp;
 u32 ri;
 struct scatterlist *ysg;
 struct scatterlist *usg;
 struct scatterlist *vsg;
 int topfield = (0 == yoffset);
 int rc;




 instructions = ((3 + (ybpl + ypadding) * ylines * 2)
    / PAGE_SIZE) + ylines;
 instructions += 2;
 if ((rc = btcx_riscmem_alloc(btv->c.pci,risc,instructions*4*5)) < 0)
  return rc;


 rp = risc->cpu;
 *(rp++) = cpu_to_le32(BT848_RISC_SYNC|BT848_FIFO_STATUS_FM3);
 *(rp++) = cpu_to_le32(0);


 ysg = sglist;
 usg = sglist;
 vsg = sglist;
 for (line = 0; line < ylines; line++) {
  if ((btv->opt_vcr_hack) &&
      (line >= (ylines - VCR_HACK_LINES)))
   continue;
  switch (vshift) {
  case 0:
   chroma = 1;
   break;
  case 1:
   if (topfield)
    chroma = ((line & 1) == 0);
   else
    chroma = ((line & 1) == 1);
   break;
  case 2:
   if (topfield)
    chroma = ((line & 3) == 0);
   else
    chroma = ((line & 3) == 2);
   break;
  default:
   chroma = 0;
   break;
  }

  for (todo = ybpl; todo > 0; todo -= ylen) {

   while (yoffset && yoffset >= sg_dma_len(ysg)) {
    yoffset -= sg_dma_len(ysg);
    ysg = sg_next(ysg);
   }


   ylen = todo;
   if (yoffset + ylen > sg_dma_len(ysg))
    ylen = sg_dma_len(ysg) - yoffset;
   if (chroma) {
    while (uoffset && uoffset >= sg_dma_len(usg)) {
     uoffset -= sg_dma_len(usg);
     usg = sg_next(usg);
    }
    while (voffset && voffset >= sg_dma_len(vsg)) {
     voffset -= sg_dma_len(vsg);
     vsg = sg_next(vsg);
    }

    if (uoffset + (ylen>>hshift) > sg_dma_len(usg))
     ylen = (sg_dma_len(usg) - uoffset) << hshift;
    if (voffset + (ylen>>hshift) > sg_dma_len(vsg))
     ylen = (sg_dma_len(vsg) - voffset) << hshift;
    ri = BT848_RISC_WRITE123;
   } else {
    ri = BT848_RISC_WRITE1S23;
   }
   if (ybpl == todo)
    ri |= BT848_RISC_SOL;
   if (ylen == todo)
    ri |= BT848_RISC_EOL;


   *(rp++)=cpu_to_le32(ri | ylen);
   *(rp++)=cpu_to_le32(((ylen >> hshift) << 16) |
         (ylen >> hshift));
   *(rp++)=cpu_to_le32(sg_dma_address(ysg)+yoffset);
   yoffset += ylen;
   if (chroma) {
    *(rp++)=cpu_to_le32(sg_dma_address(usg)+uoffset);
    uoffset += ylen >> hshift;
    *(rp++)=cpu_to_le32(sg_dma_address(vsg)+voffset);
    voffset += ylen >> hshift;
   }
  }
  yoffset += ypadding;
  if (chroma) {
   uoffset += cpadding;
   voffset += cpadding;
  }
 }


 risc->jmp = rp;
 BUG_ON((risc->jmp - risc->cpu + 2) * sizeof(*risc->cpu) > risc->size);
 return 0;
}
