
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mdp_ctx {int m2m_ctx; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int) ;
 void* v4l2_m2m_dst_buf_remove (int ) ;
 void* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static void *mtk_mdp_m2m_buf_remove(struct mtk_mdp_ctx *ctx,
        enum v4l2_buf_type type)
{
 if (V4L2_TYPE_IS_OUTPUT(type))
  return v4l2_m2m_src_buf_remove(ctx->m2m_ctx);
 else
  return v4l2_m2m_dst_buf_remove(ctx->m2m_ctx);
}
