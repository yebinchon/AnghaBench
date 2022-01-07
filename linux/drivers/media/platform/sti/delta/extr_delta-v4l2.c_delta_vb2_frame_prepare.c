
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; } ;
struct vb2_v4l2_buffer {int flags; TYPE_1__ vb2_buf; } ;
struct vb2_queue {int dummy; } ;
struct vb2_buffer {int index; struct vb2_queue* vb2_queue; } ;
struct delta_frame {int prepared; int flags; int paddr; int vaddr; int info; int index; } ;
struct delta_dev {int dev; } ;
struct delta_ctx {int name; int frameinfo; struct delta_dev* dev; } ;


 int delta_setup_frame (struct delta_ctx*,struct delta_frame*) ;
 int dev_dbg (int ,char*,int ,int ,int ,int *) ;
 int dev_err (int ,char*,int ,int) ;
 struct delta_frame* to_frame (struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 int vb2_dma_contig_plane_dma_addr (TYPE_1__*,int ) ;
 struct delta_ctx* vb2_get_drv_priv (struct vb2_queue*) ;
 int vb2_plane_vaddr (TYPE_1__*,int ) ;

__attribute__((used)) static int delta_vb2_frame_prepare(struct vb2_buffer *vb)
{
 struct vb2_queue *q = vb->vb2_queue;
 struct delta_ctx *ctx = vb2_get_drv_priv(q);
 struct delta_dev *delta = ctx->dev;
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct delta_frame *frame = to_frame(vbuf);
 int ret = 0;

 if (!frame->prepared) {
  frame->index = vbuf->vb2_buf.index;
  frame->vaddr = vb2_plane_vaddr(&vbuf->vb2_buf, 0);
  frame->paddr = vb2_dma_contig_plane_dma_addr(&vbuf->vb2_buf, 0);
  frame->info = ctx->frameinfo;

  ret = delta_setup_frame(ctx, frame);
  if (ret) {
   dev_err(delta->dev,
    "%s setup_frame() failed (%d)\n",
    ctx->name, ret);
   return ret;
  }
  frame->prepared = 1;
  dev_dbg(delta->dev,
   "%s frame[%d] prepared; virt=0x%p, phy=0x%pad\n",
   ctx->name, vb->index, frame->vaddr,
   &frame->paddr);
 }

 frame->flags = vbuf->flags;

 return 0;
}
