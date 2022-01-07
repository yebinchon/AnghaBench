
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int dummy; } ;
struct v4l2_event_subscription {int type; } ;
struct coda_ctx {int inst_type; } ;


 int CODA_INST_DECODER ;
 int EINVAL ;


 struct coda_ctx* fh_to_ctx (struct v4l2_fh*) ;
 int v4l2_ctrl_subscribe_event (struct v4l2_fh*,struct v4l2_event_subscription const*) ;
 int v4l2_event_subscribe (struct v4l2_fh*,struct v4l2_event_subscription const*,int ,int *) ;

__attribute__((used)) static int coda_subscribe_event(struct v4l2_fh *fh,
    const struct v4l2_event_subscription *sub)
{
 struct coda_ctx *ctx = fh_to_ctx(fh);

 switch (sub->type) {
 case 129:
  return v4l2_event_subscribe(fh, sub, 0, ((void*)0));
 case 128:
  if (ctx->inst_type == CODA_INST_DECODER)
   return v4l2_event_subscribe(fh, sub, 0, ((void*)0));
  else
   return -EINVAL;
 default:
  return v4l2_ctrl_subscribe_event(fh, sub);
 }
}
