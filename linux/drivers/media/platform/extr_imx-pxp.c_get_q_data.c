
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxp_q_data {int dummy; } ;
struct pxp_ctx {struct pxp_q_data* q_data; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 size_t V4L2_M2M_DST ;
 size_t V4L2_M2M_SRC ;

__attribute__((used)) static struct pxp_q_data *get_q_data(struct pxp_ctx *ctx,
      enum v4l2_buf_type type)
{
 if (type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return &ctx->q_data[V4L2_M2M_SRC];
 else
  return &ctx->q_data[V4L2_M2M_DST];
}
