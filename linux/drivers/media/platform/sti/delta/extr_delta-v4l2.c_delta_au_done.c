
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {scalar_t__ sequence; } ;
struct delta_ctx {int au_num; } ;
struct delta_au {struct vb2_v4l2_buffer vbuf; } ;


 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;

__attribute__((used)) static void delta_au_done(struct delta_ctx *ctx, struct delta_au *au, int err)
{
 struct vb2_v4l2_buffer *vbuf;

 vbuf = &au->vbuf;
 vbuf->sequence = ctx->au_num++;
 v4l2_m2m_buf_done(vbuf, err ? VB2_BUF_STATE_ERROR : VB2_BUF_STATE_DONE);
}
