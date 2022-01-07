
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int dummy; } ;
struct gsc_ctx {int m2m_ctx; } ;


 int VB2_BUF_STATE_ERROR ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 scalar_t__ v4l2_m2m_num_dst_bufs_ready (int ) ;
 scalar_t__ v4l2_m2m_num_src_bufs_ready (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static void __gsc_m2m_cleanup_queue(struct gsc_ctx *ctx)
{
 struct vb2_v4l2_buffer *src_vb, *dst_vb;

 while (v4l2_m2m_num_src_bufs_ready(ctx->m2m_ctx) > 0) {
  src_vb = v4l2_m2m_src_buf_remove(ctx->m2m_ctx);
  v4l2_m2m_buf_done(src_vb, VB2_BUF_STATE_ERROR);
 }

 while (v4l2_m2m_num_dst_bufs_ready(ctx->m2m_ctx) > 0) {
  dst_vb = v4l2_m2m_dst_buf_remove(ctx->m2m_ctx);
  v4l2_m2m_buf_done(dst_vb, VB2_BUF_STATE_ERROR);
 }
}
