
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpe_q_data {int nplanes; int flags; scalar_t__* sizeimage; } ;
struct vpe_ctx {int dev; } ;
struct vb2_v4l2_buffer {scalar_t__ field; } ;
struct vb2_buffer {TYPE_1__* vb2_queue; } ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;
 int Q_IS_INTERLACED ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 scalar_t__ V4L2_FIELD_BOTTOM ;
 scalar_t__ V4L2_FIELD_NONE ;
 scalar_t__ V4L2_FIELD_SEQ_TB ;
 scalar_t__ V4L2_FIELD_TOP ;
 struct vpe_q_data* get_q_data (struct vpe_ctx*,int ) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct vpe_ctx* vb2_get_drv_priv (TYPE_1__*) ;
 scalar_t__ vb2_plane_size (struct vb2_buffer*,int) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int,scalar_t__) ;
 int vpe_dbg (int ,char*,int ) ;
 int vpe_err (int ,char*,scalar_t__,long) ;

__attribute__((used)) static int vpe_buf_prepare(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct vpe_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 struct vpe_q_data *q_data;
 int i, num_planes;

 vpe_dbg(ctx->dev, "type: %d\n", vb->vb2_queue->type);

 q_data = get_q_data(ctx, vb->vb2_queue->type);
 num_planes = q_data->nplanes;

 if (vb->vb2_queue->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  if (!(q_data->flags & Q_IS_INTERLACED)) {
   vbuf->field = V4L2_FIELD_NONE;
  } else {
   if (vbuf->field != V4L2_FIELD_TOP &&
       vbuf->field != V4L2_FIELD_BOTTOM &&
       vbuf->field != V4L2_FIELD_SEQ_TB)
    return -EINVAL;
  }
 }

 for (i = 0; i < num_planes; i++) {
  if (vb2_plane_size(vb, i) < q_data->sizeimage[i]) {
   vpe_err(ctx->dev,
    "data will not fit into plane (%lu < %lu)\n",
    vb2_plane_size(vb, i),
    (long) q_data->sizeimage[i]);
   return -EINVAL;
  }
 }

 for (i = 0; i < num_planes; i++)
  vb2_set_plane_payload(vb, i, q_data->sizeimage[i]);

 return 0;
}
