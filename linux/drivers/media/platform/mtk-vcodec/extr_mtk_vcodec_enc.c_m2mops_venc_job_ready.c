
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_ctx {scalar_t__ state; int id; } ;


 scalar_t__ MTK_STATE_ABORT ;
 scalar_t__ MTK_STATE_FREE ;
 int mtk_v4l2_debug (int,char*,int ,scalar_t__) ;

__attribute__((used)) static int m2mops_venc_job_ready(void *m2m_priv)
{
 struct mtk_vcodec_ctx *ctx = m2m_priv;

 if (ctx->state == MTK_STATE_ABORT || ctx->state == MTK_STATE_FREE) {
  mtk_v4l2_debug(3, "[%d]Not ready: state=0x%x.",
          ctx->id, ctx->state);
  return 0;
 }

 return 1;
}
