
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct mtk_jpeg_ctx {TYPE_1__ fh; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static struct vb2_v4l2_buffer *mtk_jpeg_buf_remove(struct mtk_jpeg_ctx *ctx,
     enum v4l2_buf_type type)
{
 if (V4L2_TYPE_IS_OUTPUT(type))
  return v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
 else
  return v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
}
