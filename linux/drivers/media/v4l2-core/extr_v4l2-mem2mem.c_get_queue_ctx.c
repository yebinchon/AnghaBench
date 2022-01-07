
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_m2m_queue_ctx {int dummy; } ;
struct v4l2_m2m_ctx {struct v4l2_m2m_queue_ctx cap_q_ctx; struct v4l2_m2m_queue_ctx out_q_ctx; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int) ;

__attribute__((used)) static struct v4l2_m2m_queue_ctx *get_queue_ctx(struct v4l2_m2m_ctx *m2m_ctx,
      enum v4l2_buf_type type)
{
 if (V4L2_TYPE_IS_OUTPUT(type))
  return &m2m_ctx->out_q_ctx;
 else
  return &m2m_ctx->cap_q_ctx;
}
