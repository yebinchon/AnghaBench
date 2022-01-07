
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct vb2_v4l2_buffer {scalar_t__ sequence; } ;
struct vb2_buffer {scalar_t__ state; TYPE_3__* vb2_queue; } ;
struct TYPE_5__ {int width; int height; } ;
struct jpu_q_data {TYPE_2__* fmtinfo; TYPE_1__ format; } ;
struct jpu_ctx {int encoder; struct jpu_q_data out_q; } ;
struct jpu_buffer {size_t compr_quality; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
typedef int __be16 ;
struct TYPE_8__ {int sequence; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_6__ {int subsampling; } ;


 int JPU_JPEG_HDR_SIZE ;
 int JPU_JPEG_HEIGHT_OFFSET ;
 int JPU_JPEG_SUBS_OFFSET ;
 int JPU_JPEG_WIDTH_OFFSET ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int) ;
 scalar_t__ VB2_BUF_STATE_DONE ;
 int cpu_to_be16 (int ) ;
 int * jpeg_hdrs ;
 TYPE_4__* jpu_get_q_data (struct jpu_ctx*,int) ;
 int memcpy (int *,int ,int ) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct jpu_ctx* vb2_get_drv_priv (TYPE_3__*) ;
 int * vb2_plane_vaddr (struct vb2_buffer*,int ) ;
 struct jpu_buffer* vb2_to_jpu_buffer (struct vb2_v4l2_buffer*) ;

__attribute__((used)) static void jpu_buf_finish(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct jpu_buffer *jpu_buf = vb2_to_jpu_buffer(vbuf);
 struct jpu_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
 struct jpu_q_data *q_data = &ctx->out_q;
 enum v4l2_buf_type type = vb->vb2_queue->type;
 u8 *buffer;

 if (vb->state == VB2_BUF_STATE_DONE)
  vbuf->sequence = jpu_get_q_data(ctx, type)->sequence++;

 if (!ctx->encoder || vb->state != VB2_BUF_STATE_DONE ||
     V4L2_TYPE_IS_OUTPUT(type))
  return;

 buffer = vb2_plane_vaddr(vb, 0);

 memcpy(buffer, jpeg_hdrs[jpu_buf->compr_quality], JPU_JPEG_HDR_SIZE);
 *(__be16 *)(buffer + JPU_JPEG_HEIGHT_OFFSET) =
     cpu_to_be16(q_data->format.height);
 *(__be16 *)(buffer + JPU_JPEG_WIDTH_OFFSET) =
     cpu_to_be16(q_data->format.width);
 *(buffer + JPU_JPEG_SUBS_OFFSET) = q_data->fmtinfo->subsampling;
}
