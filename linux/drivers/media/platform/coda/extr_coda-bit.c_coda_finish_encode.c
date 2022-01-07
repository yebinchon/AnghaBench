
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vb2_v4l2_buffer {scalar_t__ sequence; int flags; int vb2_buf; } ;
struct coda_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ gop_size; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct coda_ctx {scalar_t__ gopcounter; TYPE_2__ params; int wakeup_mutex; TYPE_1__ fh; scalar_t__* vpu_header_size; int reg_idx; struct coda_dev* dev; } ;


 int CODA_CMD_ENC_PIC_BB_START ;
 int CODA_REG_BIT_WR_PTR (int ) ;
 int CODA_RET_ENC_PIC_FLAG ;
 int CODA_RET_ENC_PIC_SLICE_NUM ;
 int CODA_RET_ENC_PIC_TYPE ;
 int V4L2_BUF_FLAG_KEYFRAME ;
 int V4L2_BUF_FLAG_LAST ;
 int V4L2_BUF_FLAG_PFRAME ;
 int VB2_BUF_STATE_DONE ;
 int coda_dbg (int,struct coda_ctx*,char*,int ,...) ;
 int coda_frame_type_char (int) ;
 int coda_m2m_buf_done (struct coda_ctx*,struct vb2_v4l2_buffer*,int ) ;
 scalar_t__ coda_read (struct coda_dev*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_coda_enc_pic_done (struct coda_ctx*,struct vb2_v4l2_buffer*) ;
 int v4l2_m2m_buf_copy_metadata (struct vb2_v4l2_buffer*,struct vb2_v4l2_buffer*,int) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 int vb2_set_plane_payload (int *,int ,scalar_t__) ;

__attribute__((used)) static void coda_finish_encode(struct coda_ctx *ctx)
{
 struct vb2_v4l2_buffer *src_buf, *dst_buf;
 struct coda_dev *dev = ctx->dev;
 u32 wr_ptr, start_ptr;






 mutex_lock(&ctx->wakeup_mutex);
 src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
 dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);

 trace_coda_enc_pic_done(ctx, dst_buf);


 start_ptr = coda_read(dev, CODA_CMD_ENC_PIC_BB_START);
 wr_ptr = coda_read(dev, CODA_REG_BIT_WR_PTR(ctx->reg_idx));


 if (dst_buf->sequence == 0 ||
     src_buf->flags & V4L2_BUF_FLAG_KEYFRAME) {
  vb2_set_plane_payload(&dst_buf->vb2_buf, 0, wr_ptr - start_ptr +
     ctx->vpu_header_size[0] +
     ctx->vpu_header_size[1] +
     ctx->vpu_header_size[2]);
 } else {
  vb2_set_plane_payload(&dst_buf->vb2_buf, 0, wr_ptr - start_ptr);
 }

 coda_dbg(1, ctx, "frame size = %u\n", wr_ptr - start_ptr);

 coda_read(dev, CODA_RET_ENC_PIC_SLICE_NUM);
 coda_read(dev, CODA_RET_ENC_PIC_FLAG);

 dst_buf->flags &= ~(V4L2_BUF_FLAG_KEYFRAME |
       V4L2_BUF_FLAG_PFRAME |
       V4L2_BUF_FLAG_LAST);
 if (coda_read(dev, CODA_RET_ENC_PIC_TYPE) == 0)
  dst_buf->flags |= V4L2_BUF_FLAG_KEYFRAME;
 else
  dst_buf->flags |= V4L2_BUF_FLAG_PFRAME;
 dst_buf->flags |= src_buf->flags & V4L2_BUF_FLAG_LAST;

 v4l2_m2m_buf_copy_metadata(src_buf, dst_buf, 0);

 v4l2_m2m_buf_done(src_buf, VB2_BUF_STATE_DONE);

 dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
 coda_m2m_buf_done(ctx, dst_buf, VB2_BUF_STATE_DONE);
 mutex_unlock(&ctx->wakeup_mutex);

 ctx->gopcounter--;
 if (ctx->gopcounter < 0)
  ctx->gopcounter = ctx->params.gop_size - 1;

 coda_dbg(1, ctx, "job finished: encoded %c frame (%d)%s\n",
   coda_frame_type_char(dst_buf->flags), dst_buf->sequence,
   (dst_buf->flags & V4L2_BUF_FLAG_LAST) ? " (last)" : "");
}
