
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {scalar_t__ field; } ;
struct vb2_queue {int dummy; } ;
struct vb2_buffer {int index; struct vb2_queue* vb2_queue; } ;
struct delta_dev {int dev; } ;
struct delta_ctx {int name; struct delta_dev* dev; } ;
struct TYPE_2__ {int vb2_buf; } ;
struct delta_au {int prepared; int paddr; int vaddr; TYPE_1__ vbuf; } ;


 scalar_t__ V4L2_FIELD_ANY ;
 scalar_t__ V4L2_FIELD_NONE ;
 int dev_dbg (int ,char*,int ,int ,int ,int *) ;
 struct delta_au* to_au (struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 int vb2_dma_contig_plane_dma_addr (int *,int ) ;
 struct delta_ctx* vb2_get_drv_priv (struct vb2_queue*) ;
 int vb2_plane_vaddr (int *,int ) ;

__attribute__((used)) static int delta_vb2_au_prepare(struct vb2_buffer *vb)
{
 struct vb2_queue *q = vb->vb2_queue;
 struct delta_ctx *ctx = vb2_get_drv_priv(q);
 struct delta_dev *delta = ctx->dev;
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct delta_au *au = to_au(vbuf);

 if (!au->prepared) {

  au->vaddr = vb2_plane_vaddr(&au->vbuf.vb2_buf, 0);
  au->paddr = vb2_dma_contig_plane_dma_addr
    (&au->vbuf.vb2_buf, 0);
  au->prepared = 1;
  dev_dbg(delta->dev, "%s au[%d] prepared; virt=0x%p, phy=0x%pad\n",
   ctx->name, vb->index, au->vaddr, &au->paddr);
 }

 if (vbuf->field == V4L2_FIELD_ANY)
  vbuf->field = V4L2_FIELD_NONE;

 return 0;
}
