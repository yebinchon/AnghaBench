
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vb2_buffer {int dummy; } ;
struct fimc_frame {int width; int height; TYPE_1__* fmt; } ;
struct fimc_ctx {int dummy; } ;
struct fimc_addr {int cb; int cr; void* y; } ;
struct TYPE_2__ {int memplanes; int colplanes; int mdataplanes; int color; } ;


 int EINVAL ;
 int FIMC_FMT_YCBCR420 ;
 int dbg (char*,int,int,int,...) ;
 void* vb2_dma_contig_plane_dma_addr (struct vb2_buffer*,int) ;

int fimc_prepare_addr(struct fimc_ctx *ctx, struct vb2_buffer *vb,
        struct fimc_frame *frame, struct fimc_addr *paddr)
{
 int ret = 0;
 u32 pix_size;

 if (vb == ((void*)0) || frame == ((void*)0))
  return -EINVAL;

 pix_size = frame->width * frame->height;

 dbg("memplanes= %d, colplanes= %d, pix_size= %d",
  frame->fmt->memplanes, frame->fmt->colplanes, pix_size);

 paddr->y = vb2_dma_contig_plane_dma_addr(vb, 0);

 if (frame->fmt->memplanes == 1) {
  switch (frame->fmt->colplanes) {
  case 1:
   paddr->cb = 0;
   paddr->cr = 0;
   break;
  case 2:

   paddr->cb = (u32)(paddr->y + pix_size);
   paddr->cr = 0;
   break;
  case 3:
   paddr->cb = (u32)(paddr->y + pix_size);

   if (FIMC_FMT_YCBCR420 == frame->fmt->color)
    paddr->cr = (u32)(paddr->cb
      + (pix_size >> 2));
   else
    paddr->cr = (u32)(paddr->cb
      + (pix_size >> 1));
   break;
  default:
   return -EINVAL;
  }
 } else if (!frame->fmt->mdataplanes) {
  if (frame->fmt->memplanes >= 2)
   paddr->cb = vb2_dma_contig_plane_dma_addr(vb, 1);

  if (frame->fmt->memplanes == 3)
   paddr->cr = vb2_dma_contig_plane_dma_addr(vb, 2);
 }

 dbg("PHYS_ADDR: y= 0x%X  cb= 0x%X cr= 0x%X ret= %d",
     paddr->y, paddr->cb, paddr->cr, ret);

 return ret;
}
