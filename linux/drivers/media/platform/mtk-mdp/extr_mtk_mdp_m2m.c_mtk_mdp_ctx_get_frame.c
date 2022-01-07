
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mdp_frame {int dummy; } ;
struct mtk_mdp_ctx {struct mtk_mdp_frame d_frame; struct mtk_mdp_frame s_frame; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int) ;

__attribute__((used)) static struct mtk_mdp_frame *mtk_mdp_ctx_get_frame(struct mtk_mdp_ctx *ctx,
         enum v4l2_buf_type type)
{
 if (V4L2_TYPE_IS_OUTPUT(type))
  return &ctx->s_frame;
 return &ctx->d_frame;
}
