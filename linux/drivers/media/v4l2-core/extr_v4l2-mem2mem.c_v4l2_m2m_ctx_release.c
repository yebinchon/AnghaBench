
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int q; } ;
struct TYPE_3__ {int q; } ;
struct v4l2_m2m_ctx {TYPE_2__ out_q_ctx; TYPE_1__ cap_q_ctx; } ;


 int kfree (struct v4l2_m2m_ctx*) ;
 int v4l2_m2m_cancel_job (struct v4l2_m2m_ctx*) ;
 int vb2_queue_release (int *) ;

void v4l2_m2m_ctx_release(struct v4l2_m2m_ctx *m2m_ctx)
{

 v4l2_m2m_cancel_job(m2m_ctx);

 vb2_queue_release(&m2m_ctx->cap_q_ctx.q);
 vb2_queue_release(&m2m_ctx->out_q_ctx.q);

 kfree(m2m_ctx);
}
