
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_q_data {int dummy; } ;
struct coda_ctx {struct coda_q_data* q_data; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;




 size_t V4L2_M2M_DST ;
 size_t V4L2_M2M_SRC ;

__attribute__((used)) static inline struct coda_q_data *get_q_data(struct coda_ctx *ctx,
          enum v4l2_buf_type type)
{
 switch (type) {
 case 128:
  return &(ctx->q_data[V4L2_M2M_SRC]);
 case 129:
  return &(ctx->q_data[V4L2_M2M_DST]);
 default:
  return ((void*)0);
 }
}
