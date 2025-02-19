
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timestamp; } ;
struct vb2_v4l2_buffer {int flags; int timecode; TYPE_1__ vb2_buf; } ;
struct mtk_mdp_dev {int m2m_dev; } ;
struct mtk_mdp_ctx {int m2m_ctx; TYPE_2__* mdp_dev; } ;
struct TYPE_4__ {int m2m_dev; } ;


 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct mtk_mdp_ctx* v4l2_m2m_get_curr_priv (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static void mtk_mdp_process_done(void *priv, int vb_state)
{
 struct mtk_mdp_dev *mdp = priv;
 struct mtk_mdp_ctx *ctx;
 struct vb2_v4l2_buffer *src_vbuf, *dst_vbuf;

 ctx = v4l2_m2m_get_curr_priv(mdp->m2m_dev);
 if (!ctx)
  return;

 src_vbuf = v4l2_m2m_src_buf_remove(ctx->m2m_ctx);
 dst_vbuf = v4l2_m2m_dst_buf_remove(ctx->m2m_ctx);

 dst_vbuf->vb2_buf.timestamp = src_vbuf->vb2_buf.timestamp;
 dst_vbuf->timecode = src_vbuf->timecode;
 dst_vbuf->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
 dst_vbuf->flags |= src_vbuf->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;

 v4l2_m2m_buf_done(src_vbuf, vb_state);
 v4l2_m2m_buf_done(dst_vbuf, vb_state);
 v4l2_m2m_job_finish(ctx->mdp_dev->m2m_dev, ctx->m2m_ctx);
}
