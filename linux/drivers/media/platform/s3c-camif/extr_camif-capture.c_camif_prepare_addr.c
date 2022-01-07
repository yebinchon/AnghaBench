
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vb2_buffer {int dummy; } ;
struct TYPE_3__ {int width; int height; } ;
struct camif_frame {TYPE_1__ rect; } ;
struct camif_vp {TYPE_2__* out_fmt; struct camif_frame out_frame; } ;
struct camif_addr {int cb; int cr; int y; } ;
struct TYPE_4__ {int colplanes; int color; } ;


 int EINVAL ;
 int IMG_FMT_YCBCR422P ;
 int IMG_FMT_YCRCB420 ;
 int pr_debug (char*,int,...) ;
 int swap (int,int) ;
 int vb2_dma_contig_plane_dma_addr (struct vb2_buffer*,int ) ;

__attribute__((used)) static int camif_prepare_addr(struct camif_vp *vp, struct vb2_buffer *vb,
         struct camif_addr *paddr)
{
 struct camif_frame *frame = &vp->out_frame;
 u32 pix_size;

 if (vb == ((void*)0) || frame == ((void*)0))
  return -EINVAL;

 pix_size = frame->rect.width * frame->rect.height;

 pr_debug("colplanes: %d, pix_size: %u\n",
   vp->out_fmt->colplanes, pix_size);

 paddr->y = vb2_dma_contig_plane_dma_addr(vb, 0);

 switch (vp->out_fmt->colplanes) {
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

  if (vp->out_fmt->color == IMG_FMT_YCBCR422P)
   paddr->cr = (u32)(paddr->cb + (pix_size >> 1));
  else
   paddr->cr = (u32)(paddr->cb + (pix_size >> 2));

  if (vp->out_fmt->color == IMG_FMT_YCRCB420)
   swap(paddr->cb, paddr->cr);
  break;
 default:
  return -EINVAL;
 }

 pr_debug("DMA address: y: %pad  cb: %pad cr: %pad\n",
   &paddr->y, &paddr->cb, &paddr->cr);

 return 0;
}
