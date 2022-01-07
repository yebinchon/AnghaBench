
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct v4l2_m2m_queue_ctx {struct vb2_queue q; } ;
struct v4l2_m2m_ctx {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 struct v4l2_m2m_queue_ctx* get_queue_ctx (struct v4l2_m2m_ctx*,int) ;

struct vb2_queue *v4l2_m2m_get_vq(struct v4l2_m2m_ctx *m2m_ctx,
           enum v4l2_buf_type type)
{
 struct v4l2_m2m_queue_ctx *q_ctx;

 q_ctx = get_queue_ctx(m2m_ctx, type);
 if (!q_ctx)
  return ((void*)0);

 return &q_ctx->q;
}
