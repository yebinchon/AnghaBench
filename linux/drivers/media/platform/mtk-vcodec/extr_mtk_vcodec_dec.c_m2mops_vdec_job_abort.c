
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_ctx {int state; } ;


 int MTK_STATE_ABORT ;

__attribute__((used)) static void m2mops_vdec_job_abort(void *priv)
{
 struct mtk_vcodec_ctx *ctx = priv;

 ctx->state = MTK_STATE_ABORT;
}
