
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vicodec_q_data {int dummy; } ;
struct vicodec_ctx {struct vicodec_q_data* q_data; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;






 size_t V4L2_M2M_DST ;
 size_t V4L2_M2M_SRC ;

__attribute__((used)) static struct vicodec_q_data *get_q_data(struct vicodec_ctx *ctx,
      enum v4l2_buf_type type)
{
 switch (type) {
 case 129:
 case 128:
  return &ctx->q_data[V4L2_M2M_SRC];
 case 131:
 case 130:
  return &ctx->q_data[V4L2_M2M_DST];
 default:
  break;
 }
 return ((void*)0);
}
