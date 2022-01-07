
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int dummy; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct delta_ctx {int aborting; scalar_t__ au_num; TYPE_1__ fh; } ;


 int VB2_BUF_STATE_ERROR ;
 int delta_flush_dts (struct delta_ctx*) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 struct delta_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void delta_vb2_au_stop_streaming(struct vb2_queue *q)
{
 struct delta_ctx *ctx = vb2_get_drv_priv(q);
 struct vb2_v4l2_buffer *vbuf;

 delta_flush_dts(ctx);


 while ((vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx)))
  v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_ERROR);

 ctx->au_num = 0;

 ctx->aborting = 0;
}
