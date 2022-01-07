
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timestamp; } ;
struct vb2_v4l2_buffer {int flags; TYPE_1__ vb2_buf; int timecode; } ;
struct g2d_dev {struct g2d_ctx* curr; int m2m_dev; int gate; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct g2d_ctx {TYPE_2__ fh; } ;
typedef int irqreturn_t ;


 int BUG_ON (int ) ;
 int IRQ_HANDLED ;
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ;
 int VB2_BUF_STATE_DONE ;
 int clk_disable (int ) ;
 int g2d_clear_int (struct g2d_dev*) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static irqreturn_t g2d_isr(int irq, void *prv)
{
 struct g2d_dev *dev = prv;
 struct g2d_ctx *ctx = dev->curr;
 struct vb2_v4l2_buffer *src, *dst;

 g2d_clear_int(dev);
 clk_disable(dev->gate);

 BUG_ON(ctx == ((void*)0));

 src = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
 dst = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);

 BUG_ON(src == ((void*)0));
 BUG_ON(dst == ((void*)0));

 dst->timecode = src->timecode;
 dst->vb2_buf.timestamp = src->vb2_buf.timestamp;
 dst->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
 dst->flags |=
  src->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;

 v4l2_m2m_buf_done(src, VB2_BUF_STATE_DONE);
 v4l2_m2m_buf_done(dst, VB2_BUF_STATE_DONE);
 v4l2_m2m_job_finish(dev->m2m_dev, ctx->fh.m2m_ctx);

 dev->curr = ((void*)0);
 return IRQ_HANDLED;
}
