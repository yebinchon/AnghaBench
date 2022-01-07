
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bdisp_frame {int dummy; } ;
struct bdisp_ctx {TYPE_1__* bdisp_dev; struct bdisp_frame dst; struct bdisp_frame src; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 struct bdisp_frame* ERR_PTR (int ) ;


 int dev_err (int ,char*,int) ;

__attribute__((used)) static struct bdisp_frame *ctx_get_frame(struct bdisp_ctx *ctx,
      enum v4l2_buf_type type)
{
 switch (type) {
 case 128:
  return &ctx->src;
 case 129:
  return &ctx->dst;
 default:
  dev_err(ctx->bdisp_dev->dev,
   "Wrong buffer/video queue type (%d)\n", type);
  break;
 }

 return ERR_PTR(-EINVAL);
}
