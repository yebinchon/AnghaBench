
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct jpu_ctx {TYPE_1__ fh; TYPE_2__* jpu; } ;
struct TYPE_4__ {int m2m_dev; int lock; } ;


 int JCCMD ;
 int JCCMD_SRST ;
 int VB2_BUF_STATE_ERROR ;
 int jpu_write (TYPE_2__*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static void jpu_cleanup(struct jpu_ctx *ctx, bool reset)
{

 struct vb2_v4l2_buffer *src_buf, *dst_buf;
 unsigned long flags;

 spin_lock_irqsave(&ctx->jpu->lock, flags);

 src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
 dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);

 v4l2_m2m_buf_done(src_buf, VB2_BUF_STATE_ERROR);
 v4l2_m2m_buf_done(dst_buf, VB2_BUF_STATE_ERROR);


 if (reset)
  jpu_write(ctx->jpu, JCCMD_SRST, JCCMD);

 spin_unlock_irqrestore(&ctx->jpu->lock, flags);

 v4l2_m2m_job_finish(ctx->jpu->m2m_dev, ctx->fh.m2m_ctx);
}
