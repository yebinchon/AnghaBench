
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rga_frame {int dummy; } ;
struct rga_ctx {struct rga_frame out; struct rga_frame in; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 struct rga_frame* ERR_PTR (int ) ;



struct rga_frame *rga_get_frame(struct rga_ctx *ctx, enum v4l2_buf_type type)
{
 switch (type) {
 case 128:
  return &ctx->in;
 case 129:
  return &ctx->out;
 default:
  return ERR_PTR(-EINVAL);
 }
}
