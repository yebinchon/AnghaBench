
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timestamp; } ;
struct vb2_v4l2_buffer {int flags; TYPE_1__ vb2_buf; int timecode; } ;
struct rockchip_rga {int m2m_dev; struct rga_ctx* curr; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct rga_ctx {TYPE_2__ fh; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RGA_INT ;
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ;
 int VB2_BUF_STATE_DONE ;
 int WARN_ON (int) ;
 int rga_mod (struct rockchip_rga*,int ,int,int) ;
 int rga_read (struct rockchip_rga*,int ) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static irqreturn_t rga_isr(int irq, void *prv)
{
 struct rockchip_rga *rga = prv;
 int intr;

 intr = rga_read(rga, RGA_INT) & 0xf;

 rga_mod(rga, RGA_INT, intr << 4, 0xf << 4);

 if (intr & 0x04) {
  struct vb2_v4l2_buffer *src, *dst;
  struct rga_ctx *ctx = rga->curr;

  WARN_ON(!ctx);

  rga->curr = ((void*)0);

  src = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
  dst = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);

  WARN_ON(!src);
  WARN_ON(!dst);

  dst->timecode = src->timecode;
  dst->vb2_buf.timestamp = src->vb2_buf.timestamp;
  dst->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
  dst->flags |= src->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;

  v4l2_m2m_buf_done(src, VB2_BUF_STATE_DONE);
  v4l2_m2m_buf_done(dst, VB2_BUF_STATE_DONE);
  v4l2_m2m_job_finish(rga->m2m_dev, ctx->fh.m2m_ctx);
 }

 return IRQ_HANDLED;
}
