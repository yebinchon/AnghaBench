
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct vb2_v4l2_buffer {int vb2_buf; } ;
struct g2d_dev {int ctrl_lock; TYPE_2__* variant; int gate; struct g2d_ctx* curr; } ;
struct TYPE_10__ {scalar_t__ c_width; scalar_t__ c_height; } ;
struct TYPE_9__ {scalar_t__ c_width; scalar_t__ c_height; } ;
struct TYPE_7__ {int m2m_ctx; } ;
struct g2d_ctx {TYPE_4__ out; TYPE_3__ in; int flip; int rop; TYPE_1__ fh; struct g2d_dev* dev; } ;
struct TYPE_8__ {scalar_t__ hw_rev; } ;


 int CMD_V3_ENABLE_STRETCH ;
 scalar_t__ TYPE_G2D_3X ;
 int clk_enable (int ) ;
 int g2d_reset (struct g2d_dev*) ;
 int g2d_set_cmd (struct g2d_dev*,int ) ;
 int g2d_set_dst_addr (struct g2d_dev*,int ) ;
 int g2d_set_dst_size (struct g2d_dev*,TYPE_4__*) ;
 int g2d_set_flip (struct g2d_dev*,int ) ;
 int g2d_set_rop4 (struct g2d_dev*,int ) ;
 int g2d_set_src_addr (struct g2d_dev*,int ) ;
 int g2d_set_src_size (struct g2d_dev*,TYPE_3__*) ;
 int g2d_set_v41_stretch (struct g2d_dev*,TYPE_3__*,TYPE_4__*) ;
 int g2d_start (struct g2d_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;
 int vb2_dma_contig_plane_dma_addr (int *,int ) ;

__attribute__((used)) static void device_run(void *prv)
{
 struct g2d_ctx *ctx = prv;
 struct g2d_dev *dev = ctx->dev;
 struct vb2_v4l2_buffer *src, *dst;
 unsigned long flags;
 u32 cmd = 0;

 dev->curr = ctx;

 src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);

 clk_enable(dev->gate);
 g2d_reset(dev);

 spin_lock_irqsave(&dev->ctrl_lock, flags);

 g2d_set_src_size(dev, &ctx->in);
 g2d_set_src_addr(dev, vb2_dma_contig_plane_dma_addr(&src->vb2_buf, 0));

 g2d_set_dst_size(dev, &ctx->out);
 g2d_set_dst_addr(dev, vb2_dma_contig_plane_dma_addr(&dst->vb2_buf, 0));

 g2d_set_rop4(dev, ctx->rop);
 g2d_set_flip(dev, ctx->flip);

 if (ctx->in.c_width != ctx->out.c_width ||
  ctx->in.c_height != ctx->out.c_height) {
  if (dev->variant->hw_rev == TYPE_G2D_3X)
   cmd |= CMD_V3_ENABLE_STRETCH;
  else
   g2d_set_v41_stretch(dev, &ctx->in, &ctx->out);
 }

 g2d_set_cmd(dev, cmd);
 g2d_start(dev);

 spin_unlock_irqrestore(&dev->ctrl_lock, flags);
}
