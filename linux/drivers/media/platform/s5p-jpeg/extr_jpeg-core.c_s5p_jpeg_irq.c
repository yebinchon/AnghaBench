
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timestamp; } ;
struct vb2_v4l2_buffer {int flags; TYPE_2__ vb2_buf; int timecode; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; TYPE_1__ fh; int subsampling; } ;
struct s5p_jpeg {int m2m_dev; int regs; int slock; } ;
typedef int irqreturn_t ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 int IRQ_HANDLED ;
 scalar_t__ S5P_JPEG_DECODE ;
 scalar_t__ S5P_JPEG_ENCODE ;
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ;
 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int s5p_jpeg_clear_enc_stream_stat (int ) ;
 int s5p_jpeg_clear_int (int ) ;
 int s5p_jpeg_clear_timer_stat (int ) ;
 unsigned long s5p_jpeg_compressed_size (int ) ;
 int s5p_jpeg_enc_stream_stat (int ) ;
 int s5p_jpeg_get_subsampling_mode (int ) ;
 int s5p_jpeg_result_stat_ok (int ) ;
 scalar_t__ s5p_jpeg_stream_stat_ok (int ) ;
 int s5p_jpeg_timer_stat (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct s5p_jpeg_ctx* v4l2_m2m_get_curr_priv (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 int vb2_set_plane_payload (TYPE_2__*,int ,unsigned long) ;

__attribute__((used)) static irqreturn_t s5p_jpeg_irq(int irq, void *dev_id)
{
 struct s5p_jpeg *jpeg = dev_id;
 struct s5p_jpeg_ctx *curr_ctx;
 struct vb2_v4l2_buffer *src_buf, *dst_buf;
 unsigned long payload_size = 0;
 enum vb2_buffer_state state = VB2_BUF_STATE_DONE;
 bool enc_jpeg_too_large = 0;
 bool timer_elapsed = 0;
 bool op_completed = 0;

 spin_lock(&jpeg->slock);

 curr_ctx = v4l2_m2m_get_curr_priv(jpeg->m2m_dev);

 src_buf = v4l2_m2m_src_buf_remove(curr_ctx->fh.m2m_ctx);
 dst_buf = v4l2_m2m_dst_buf_remove(curr_ctx->fh.m2m_ctx);

 if (curr_ctx->mode == S5P_JPEG_ENCODE)
  enc_jpeg_too_large = s5p_jpeg_enc_stream_stat(jpeg->regs);
 timer_elapsed = s5p_jpeg_timer_stat(jpeg->regs);
 op_completed = s5p_jpeg_result_stat_ok(jpeg->regs);
 if (curr_ctx->mode == S5P_JPEG_DECODE)
  op_completed = op_completed &&
     s5p_jpeg_stream_stat_ok(jpeg->regs);

 if (enc_jpeg_too_large) {
  state = VB2_BUF_STATE_ERROR;
  s5p_jpeg_clear_enc_stream_stat(jpeg->regs);
 } else if (timer_elapsed) {
  state = VB2_BUF_STATE_ERROR;
  s5p_jpeg_clear_timer_stat(jpeg->regs);
 } else if (!op_completed) {
  state = VB2_BUF_STATE_ERROR;
 } else {
  payload_size = s5p_jpeg_compressed_size(jpeg->regs);
 }

 dst_buf->timecode = src_buf->timecode;
 dst_buf->vb2_buf.timestamp = src_buf->vb2_buf.timestamp;
 dst_buf->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
 dst_buf->flags |=
  src_buf->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;

 v4l2_m2m_buf_done(src_buf, state);
 if (curr_ctx->mode == S5P_JPEG_ENCODE)
  vb2_set_plane_payload(&dst_buf->vb2_buf, 0, payload_size);
 v4l2_m2m_buf_done(dst_buf, state);

 curr_ctx->subsampling = s5p_jpeg_get_subsampling_mode(jpeg->regs);
 spin_unlock(&jpeg->slock);

 s5p_jpeg_clear_int(jpeg->regs);

 v4l2_m2m_job_finish(jpeg->m2m_dev, curr_ctx->fh.m2m_ctx);
 return IRQ_HANDLED;
}
