
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_buffer {TYPE_2__* vb2_queue; } ;
struct gsc_frame {int * payload; TYPE_1__* fmt; } ;
struct gsc_ctx {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int num_planes; } ;


 scalar_t__ IS_ERR (struct gsc_frame*) ;
 int PTR_ERR (struct gsc_frame*) ;
 int V4L2_TYPE_IS_OUTPUT (int ) ;
 struct gsc_frame* ctx_get_frame (struct gsc_ctx*,int ) ;
 struct gsc_ctx* vb2_get_drv_priv (TYPE_2__*) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int,int ) ;

__attribute__((used)) static int gsc_m2m_buf_prepare(struct vb2_buffer *vb)
{
 struct gsc_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 struct gsc_frame *frame;
 int i;

 frame = ctx_get_frame(ctx, vb->vb2_queue->type);
 if (IS_ERR(frame))
  return PTR_ERR(frame);

 if (!V4L2_TYPE_IS_OUTPUT(vb->vb2_queue->type)) {
  for (i = 0; i < frame->fmt->num_planes; i++)
   vb2_set_plane_payload(vb, i, frame->payload[i]);
 }

 return 0;
}
