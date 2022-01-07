
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_jpeg_q_data {int dummy; } ;
struct mtk_jpeg_ctx {struct mtk_jpeg_q_data cap_q; struct mtk_jpeg_q_data out_q; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int) ;

__attribute__((used)) static struct mtk_jpeg_q_data *mtk_jpeg_get_q_data(struct mtk_jpeg_ctx *ctx,
         enum v4l2_buf_type type)
{
 if (V4L2_TYPE_IS_OUTPUT(type))
  return &ctx->out_q;
 return &ctx->cap_q;
}
