
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_ctx {int src_queue_cnt; int dst_queue_cnt; scalar_t__ state; } ;


 scalar_t__ MFCINST_FINISHING ;
 scalar_t__ MFCINST_GOT_INST ;
 scalar_t__ MFCINST_HEAD_PRODUCED ;
 scalar_t__ MFCINST_RUNNING ;
 int mfc_debug (int,char*,...) ;

__attribute__((used)) static int s5p_mfc_ctx_ready(struct s5p_mfc_ctx *ctx)
{
 mfc_debug(2, "src=%d, dst=%d, state=%d\n",
    ctx->src_queue_cnt, ctx->dst_queue_cnt, ctx->state);

 if (ctx->state == MFCINST_GOT_INST && ctx->dst_queue_cnt >= 1)
  return 1;

 if ((ctx->state == MFCINST_RUNNING ||
  ctx->state == MFCINST_HEAD_PRODUCED) &&
  ctx->src_queue_cnt >= 1 && ctx->dst_queue_cnt >= 1)
  return 1;

 if (ctx->state == MFCINST_FINISHING &&
  ctx->dst_queue_cnt >= 1)
  return 1;
 mfc_debug(2, "ctx is not ready\n");
 return 0;
}
