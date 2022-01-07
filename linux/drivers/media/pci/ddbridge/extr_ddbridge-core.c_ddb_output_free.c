
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ddb_output {TYPE_1__* dma; } ;
typedef int s32 ;
struct TYPE_2__ {int stat; int cbuf; int num; int size; int coff; } ;



__attribute__((used)) static u32 ddb_output_free(struct ddb_output *output)
{
 u32 idx, off, stat = output->dma->stat;
 s32 diff;

 idx = (stat >> 11) & 0x1f;
 off = (stat & 0x7ff) << 7;

 if (output->dma->cbuf != idx) {
  if ((((output->dma->cbuf + 1) % output->dma->num) == idx) &&
      (output->dma->size - output->dma->coff <= (2 * 188)))
   return 0;
  return 188;
 }
 diff = off - output->dma->coff;
 if (diff <= 0 || diff > (2 * 188))
  return 188;
 return 0;
}
