
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int dummy; } ;
struct delta_frame {int state; struct vb2_v4l2_buffer vbuf; } ;
struct delta_dec {int dummy; } ;
struct delta_ctx {unsigned int nb_of_frames; int aborting; scalar_t__ frame_num; struct delta_frame** frames; struct delta_dec* dec; } ;


 int DELTA_FRAME_OUT ;
 int VB2_BUF_STATE_ERROR ;
 int call_dec_op (struct delta_dec const*,int ,struct delta_ctx*) ;
 int delta_flush_dts (struct delta_ctx*) ;
 int flush ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct delta_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void delta_vb2_frame_stop_streaming(struct vb2_queue *q)
{
 struct delta_ctx *ctx = vb2_get_drv_priv(q);
 struct vb2_v4l2_buffer *vbuf;
 struct delta_frame *frame;
 const struct delta_dec *dec = ctx->dec;
 unsigned int i;

 delta_flush_dts(ctx);

 call_dec_op(dec, flush, ctx);





 for (i = 0; i < ctx->nb_of_frames; i++) {
  frame = ctx->frames[i];
  if (!(frame->state & DELTA_FRAME_OUT)) {
   vbuf = &frame->vbuf;
   v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_ERROR);
  }
  frame->state = DELTA_FRAME_OUT;
 }

 ctx->frame_num = 0;

 ctx->aborting = 0;
}
