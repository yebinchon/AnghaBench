
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_frame {int dts; int index; } ;
struct delta_dev {int dev; } ;
struct delta_dec {int dummy; } ;
struct delta_ctx {scalar_t__ state; int name; struct delta_dev* dev; struct delta_dec* dec; } ;


 scalar_t__ DELTA_STATE_EOS ;
 scalar_t__ DELTA_STATE_READY ;
 scalar_t__ DELTA_STATE_WF_EOS ;
 int ENODATA ;
 int call_dec_op (struct delta_dec const*,int ,struct delta_ctx*,...) ;
 int delta_complete_eos (struct delta_ctx*,struct delta_frame*) ;
 int delta_frame_done (struct delta_ctx*,struct delta_frame*,int ) ;
 int delta_get_free_frame (struct delta_ctx*,struct delta_frame**) ;
 int delta_pop_dts (struct delta_ctx*,int *) ;
 int dev_dbg (int ,char*,int ,...) ;
 int drain ;
 int get_frame ;

__attribute__((used)) static int delta_decoder_stop_cmd(struct delta_ctx *ctx, void *fh)
{
 const struct delta_dec *dec = ctx->dec;
 struct delta_dev *delta = ctx->dev;
 struct delta_frame *frame = ((void*)0);
 int ret = 0;

 dev_dbg(delta->dev, "%s EOS received\n", ctx->name);

 if (ctx->state != DELTA_STATE_READY)
  return 0;


 call_dec_op(dec, drain, ctx);


 while (1) {
  frame = ((void*)0);
  ret = call_dec_op(dec, get_frame, ctx, &frame);
  if (ret == -ENODATA) {

   break;
  }
  if (frame) {
   dev_dbg(delta->dev, "%s drain frame[%d]\n",
    ctx->name, frame->index);


   delta_pop_dts(ctx, &frame->dts);


   delta_frame_done(ctx, frame, 0);
  }
 }


 ret = delta_get_free_frame(ctx, &frame);
 if (ret)
  goto delay_eos;


 delta_complete_eos(ctx, frame);

 ctx->state = DELTA_STATE_EOS;

 return 0;

delay_eos:






 ctx->state = DELTA_STATE_WF_EOS;
 dev_dbg(delta->dev, "%s EOS delayed\n", ctx->name);

 return 0;
}
