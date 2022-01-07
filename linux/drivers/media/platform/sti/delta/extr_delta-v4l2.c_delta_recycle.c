
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct delta_frame {scalar_t__ dts; scalar_t__ flags; int state; struct vb2_v4l2_buffer vbuf; } ;
struct delta_dec {int dummy; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct delta_ctx {TYPE_1__ fh; struct delta_dec* dec; } ;


 int DELTA_FRAME_FREE ;
 int DELTA_FRAME_M2M ;
 int DELTA_FRAME_OUT ;
 int call_dec_op (struct delta_dec const*,int ,struct delta_ctx*,struct delta_frame*) ;
 int recycle ;
 int v4l2_m2m_buf_queue (int ,struct vb2_v4l2_buffer*) ;

__attribute__((used)) static int delta_recycle(struct delta_ctx *ctx, struct delta_frame *frame)
{
 const struct delta_dec *dec = ctx->dec;


 call_dec_op(dec, recycle, ctx, frame);


 frame->state &= ~DELTA_FRAME_OUT;


 if (frame->state == DELTA_FRAME_FREE) {
  struct vb2_v4l2_buffer *vbuf = &frame->vbuf;

  v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, vbuf);
  frame->state = DELTA_FRAME_M2M;
 }


 frame->flags = 0;
 frame->dts = 0;

 return 0;
}
