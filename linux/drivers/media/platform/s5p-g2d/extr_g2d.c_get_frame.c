
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_frame {int dummy; } ;
struct g2d_ctx {struct g2d_frame out; struct g2d_frame in; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 struct g2d_frame* ERR_PTR (int ) ;



__attribute__((used)) static struct g2d_frame *get_frame(struct g2d_ctx *ctx,
       enum v4l2_buf_type type)
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
