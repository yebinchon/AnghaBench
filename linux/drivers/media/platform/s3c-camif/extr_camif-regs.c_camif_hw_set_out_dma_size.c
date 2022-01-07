
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct camif_frame {int f_width; int f_height; } ;
struct camif_vp {int offset; int id; int camif; struct camif_frame out_frame; } ;


 int CITRGFMT_TARGETSIZE_MASK ;
 int S3C_CAMIF_REG_CITRGFMT (int ,int ) ;
 int camif_read (int ,int ) ;
 int camif_write (int ,int ,int) ;

__attribute__((used)) static void camif_hw_set_out_dma_size(struct camif_vp *vp)
{
 struct camif_frame *frame = &vp->out_frame;
 u32 cfg;

 cfg = camif_read(vp->camif, S3C_CAMIF_REG_CITRGFMT(vp->id, vp->offset));
 cfg &= ~CITRGFMT_TARGETSIZE_MASK;
 cfg |= (frame->f_width << 16) | frame->f_height;
 camif_write(vp->camif, S3C_CAMIF_REG_CITRGFMT(vp->id, vp->offset), cfg);
}
