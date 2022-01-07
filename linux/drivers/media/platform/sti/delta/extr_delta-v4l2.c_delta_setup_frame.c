
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_frame {size_t index; int state; } ;
struct delta_dev {int dev; } ;
struct delta_dec {int dummy; } ;
struct delta_ctx {size_t nb_of_frames; struct delta_frame** frames; int name; struct delta_dec* dec; struct delta_dev* dev; } ;


 int DELTA_FRAME_FREE ;
 size_t DELTA_MAX_FRAMES ;
 int EINVAL ;
 int call_dec_op (struct delta_dec const*,int ,struct delta_ctx*,struct delta_frame*) ;
 int dev_err (int ,char*,int ,size_t,size_t) ;
 int dev_warn (int ,char*,int ,size_t,size_t) ;
 int setup_frame ;

__attribute__((used)) static int delta_setup_frame(struct delta_ctx *ctx,
        struct delta_frame *frame)
{
 struct delta_dev *delta = ctx->dev;
 const struct delta_dec *dec = ctx->dec;

 if (frame->index >= DELTA_MAX_FRAMES) {
  dev_err(delta->dev,
   "%s frame index=%d exceeds output frame count (%d)\n",
   ctx->name, frame->index, DELTA_MAX_FRAMES);
  return -EINVAL;
 }

 if (ctx->nb_of_frames >= DELTA_MAX_FRAMES) {
  dev_err(delta->dev,
   "%s number of frames exceeds output frame count (%d > %d)\n",
   ctx->name, ctx->nb_of_frames, DELTA_MAX_FRAMES);
  return -EINVAL;
 }

 if (frame->index != ctx->nb_of_frames) {
  dev_warn(delta->dev,
    "%s frame index discontinuity detected, expected %d, got %d\n",
    ctx->name, ctx->nb_of_frames, frame->index);
 }

 frame->state = DELTA_FRAME_FREE;
 ctx->frames[ctx->nb_of_frames] = frame;
 ctx->nb_of_frames++;


 return call_dec_op(dec, setup_frame, ctx, frame);
}
