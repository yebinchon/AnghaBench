
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe_q_data {int dummy; } ;
struct vpe_ctx {struct vpe_q_data* q_data; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 size_t Q_DATA_DST ;
 size_t Q_DATA_SRC ;





__attribute__((used)) static struct vpe_q_data *get_q_data(struct vpe_ctx *ctx,
         enum v4l2_buf_type type)
{
 switch (type) {
 case 128:
 case 129:
  return &ctx->q_data[Q_DATA_SRC];
 case 130:
 case 131:
  return &ctx->q_data[Q_DATA_DST];
 default:
  return ((void*)0);
 }
 return ((void*)0);
}
