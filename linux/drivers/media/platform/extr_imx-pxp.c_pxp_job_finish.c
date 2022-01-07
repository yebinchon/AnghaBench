
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct pxp_dev {int m2m_dev; int irqlock; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct pxp_ctx {TYPE_1__ fh; int dev; } ;


 int VB2_BUF_STATE_DONE ;
 int dprintk (int ,char*) ;
 int pr_err (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct pxp_ctx* v4l2_m2m_get_curr_priv (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static void pxp_job_finish(struct pxp_dev *dev)
{
 struct pxp_ctx *curr_ctx;
 struct vb2_v4l2_buffer *src_vb, *dst_vb;
 unsigned long flags;

 curr_ctx = v4l2_m2m_get_curr_priv(dev->m2m_dev);

 if (curr_ctx == ((void*)0)) {
  pr_err("Instance released before the end of transaction\n");
  return;
 }

 src_vb = v4l2_m2m_src_buf_remove(curr_ctx->fh.m2m_ctx);
 dst_vb = v4l2_m2m_dst_buf_remove(curr_ctx->fh.m2m_ctx);

 spin_lock_irqsave(&dev->irqlock, flags);
 v4l2_m2m_buf_done(src_vb, VB2_BUF_STATE_DONE);
 v4l2_m2m_buf_done(dst_vb, VB2_BUF_STATE_DONE);
 spin_unlock_irqrestore(&dev->irqlock, flags);

 dprintk(curr_ctx->dev, "Finishing transaction\n");
 v4l2_m2m_job_finish(dev->m2m_dev, curr_ctx->fh.m2m_ctx);
}
