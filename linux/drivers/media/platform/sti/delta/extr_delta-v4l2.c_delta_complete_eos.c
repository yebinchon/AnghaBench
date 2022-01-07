
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_event {int type; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct delta_frame {int flags; TYPE_1__ info; } ;
struct delta_dev {int dev; } ;
struct delta_ctx {int name; int fh; struct delta_dev* dev; } ;


 int V4L2_BUF_FLAG_LAST ;
 int V4L2_EVENT_EOS ;
 int delta_frame_done (struct delta_ctx*,struct delta_frame*,int ) ;
 int dev_dbg (int ,char*,int ) ;
 int v4l2_event_queue_fh (int *,struct v4l2_event const*) ;

__attribute__((used)) static void delta_complete_eos(struct delta_ctx *ctx,
          struct delta_frame *frame)
{
 struct delta_dev *delta = ctx->dev;
 const struct v4l2_event ev = {.type = V4L2_EVENT_EOS};
 frame->info.size = 0;


 frame->flags |= V4L2_BUF_FLAG_LAST;


 delta_frame_done(ctx, frame, 0);


 v4l2_event_queue_fh(&ctx->fh, &ev);

 dev_dbg(delta->dev, "%s EOS completed\n", ctx->name);
}
