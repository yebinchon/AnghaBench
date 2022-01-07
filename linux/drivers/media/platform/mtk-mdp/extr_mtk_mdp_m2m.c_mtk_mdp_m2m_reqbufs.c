
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {scalar_t__ count; scalar_t__ type; } ;
struct mtk_mdp_ctx {int m2m_ctx; } ;
struct file {int dummy; } ;


 int MTK_MDP_DST_FMT ;
 int MTK_MDP_SRC_FMT ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 struct mtk_mdp_ctx* fh_to_ctx (void*) ;
 int mtk_mdp_ctx_state_lock_clear (struct mtk_mdp_ctx*,int ) ;
 int v4l2_m2m_reqbufs (struct file*,int ,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int mtk_mdp_m2m_reqbufs(struct file *file, void *fh,
          struct v4l2_requestbuffers *reqbufs)
{
 struct mtk_mdp_ctx *ctx = fh_to_ctx(fh);

 if (reqbufs->count == 0) {
  if (reqbufs->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
   mtk_mdp_ctx_state_lock_clear(ctx, MTK_MDP_SRC_FMT);
  else
   mtk_mdp_ctx_state_lock_clear(ctx, MTK_MDP_DST_FMT);
 }

 return v4l2_m2m_reqbufs(file, ctx->m2m_ctx, reqbufs);
}
