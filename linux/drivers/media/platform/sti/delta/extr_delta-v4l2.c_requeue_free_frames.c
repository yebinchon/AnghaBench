
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct delta_frame {scalar_t__ state; struct vb2_v4l2_buffer vbuf; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct delta_ctx {unsigned int nb_of_frames; TYPE_1__ fh; struct delta_frame** frames; } ;


 scalar_t__ DELTA_FRAME_FREE ;
 scalar_t__ DELTA_FRAME_M2M ;
 int v4l2_m2m_buf_queue (int ,struct vb2_v4l2_buffer*) ;

__attribute__((used)) static void requeue_free_frames(struct delta_ctx *ctx)
{
 struct vb2_v4l2_buffer *vbuf;
 struct delta_frame *frame;
 unsigned int i;


 for (i = 0; i < ctx->nb_of_frames; i++) {
  frame = ctx->frames[i];
  if (frame->state == DELTA_FRAME_FREE) {
   vbuf = &frame->vbuf;
   v4l2_m2m_buf_queue(ctx->fh.m2m_ctx, vbuf);
   frame->state = DELTA_FRAME_M2M;
  }
 }
}
