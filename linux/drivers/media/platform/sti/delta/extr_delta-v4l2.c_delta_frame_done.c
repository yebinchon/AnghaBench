
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {scalar_t__ sequence; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct delta_frame {TYPE_1__ info; struct vb2_v4l2_buffer vbuf; int state; } ;
struct delta_ctx {int output_frames; int frame_num; } ;


 int DELTA_FRAME_OUT ;
 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int dump_frame (struct delta_ctx*,struct delta_frame*) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;

__attribute__((used)) static void delta_frame_done(struct delta_ctx *ctx, struct delta_frame *frame,
        int err)
{
 struct vb2_v4l2_buffer *vbuf;

 dump_frame(ctx, frame);


 frame->state |= DELTA_FRAME_OUT;

 vbuf = &frame->vbuf;
 vbuf->sequence = ctx->frame_num++;
 v4l2_m2m_buf_done(vbuf, err ? VB2_BUF_STATE_ERROR : VB2_BUF_STATE_DONE);

 if (frame->info.size)
  ctx->output_frames++;
}
