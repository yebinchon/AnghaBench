
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_buffer {int timestamp; } ;
struct vb2_v4l2_buffer {struct vb2_buffer vb2_buf; scalar_t__ sequence; int field; } ;
struct tw686x_video_channel {int pb; int sequence; TYPE_1__** curr_bufs; struct tw686x_dev* dev; struct tw686x_dma_desc* dma_descs; } ;
struct tw686x_dma_desc {int size; int virt; } ;
struct tw686x_dev {scalar_t__ dma_mode; TYPE_2__* dma_ops; } ;
struct TYPE_4__ {int field; } ;
struct TYPE_3__ {struct vb2_v4l2_buffer vb; } ;


 scalar_t__ TW686X_DMA_MODE_MEMCPY ;
 int VB2_BUF_STATE_DONE ;
 int ktime_get_ns () ;
 int memcpy (int ,int ,int ) ;
 int vb2_buffer_done (struct vb2_buffer*,int ) ;
 int vb2_plane_vaddr (struct vb2_buffer*,int ) ;

__attribute__((used)) static void tw686x_buf_done(struct tw686x_video_channel *vc,
       unsigned int pb)
{
 struct tw686x_dma_desc *desc = &vc->dma_descs[pb];
 struct tw686x_dev *dev = vc->dev;
 struct vb2_v4l2_buffer *vb;
 struct vb2_buffer *vb2_buf;

 if (vc->curr_bufs[pb]) {
  vb = &vc->curr_bufs[pb]->vb;

  vb->field = dev->dma_ops->field;
  vb->sequence = vc->sequence++;
  vb2_buf = &vb->vb2_buf;

  if (dev->dma_mode == TW686X_DMA_MODE_MEMCPY)
   memcpy(vb2_plane_vaddr(vb2_buf, 0), desc->virt,
          desc->size);
  vb2_buf->timestamp = ktime_get_ns();
  vb2_buffer_done(vb2_buf, VB2_BUF_STATE_DONE);
 }

 vc->pb = !pb;
}
