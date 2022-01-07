
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_mdp_ctx {int m2m_ctx; TYPE_2__* mdp_dev; int vpu; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int MTK_MDP_DST_FMT ;
 int MTK_MDP_SRC_FMT ;
 int MTK_MDP_VPU_INIT ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int) ;
 int dev_err (int *,char*,int) ;
 struct mtk_mdp_ctx* fh_to_ctx (void*) ;
 int mtk_mdp_ctx_state_is_set (struct mtk_mdp_ctx*,int ) ;
 int mtk_mdp_ctx_state_lock_set (struct mtk_mdp_ctx*,int ) ;
 int mtk_mdp_vpu_init (int *) ;
 int v4l2_m2m_streamon (struct file*,int ,int) ;

__attribute__((used)) static int mtk_mdp_m2m_streamon(struct file *file, void *fh,
    enum v4l2_buf_type type)
{
 struct mtk_mdp_ctx *ctx = fh_to_ctx(fh);
 int ret;


 if (V4L2_TYPE_IS_OUTPUT(type)) {
  if (!mtk_mdp_ctx_state_is_set(ctx, MTK_MDP_SRC_FMT))
   return -EINVAL;
 } else if (!mtk_mdp_ctx_state_is_set(ctx, MTK_MDP_DST_FMT)) {
  return -EINVAL;
 }

 if (!mtk_mdp_ctx_state_is_set(ctx, MTK_MDP_VPU_INIT)) {
  ret = mtk_mdp_vpu_init(&ctx->vpu);
  if (ret < 0) {
   dev_err(&ctx->mdp_dev->pdev->dev,
    "vpu init failed %d\n",
    ret);
   return -EINVAL;
  }
  mtk_mdp_ctx_state_lock_set(ctx, MTK_MDP_VPU_INIT);
 }

 return v4l2_m2m_streamon(file, ctx->m2m_ctx, type);
}
