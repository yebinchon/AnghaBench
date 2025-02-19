
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_ctx {int src_queue_cnt; scalar_t__ state; scalar_t__ dst_queue_cnt; scalar_t__ pb_count; scalar_t__ capture_state; } ;


 scalar_t__ MFCINST_FINISHING ;
 scalar_t__ MFCINST_GOT_INST ;
 scalar_t__ MFCINST_HEAD_PARSED ;
 scalar_t__ MFCINST_RES_CHANGE_END ;
 scalar_t__ MFCINST_RES_CHANGE_FLUSH ;
 scalar_t__ MFCINST_RES_CHANGE_INIT ;
 scalar_t__ MFCINST_RUNNING ;
 scalar_t__ QUEUE_BUFS_MMAPED ;
 int mfc_debug (int,char*) ;

__attribute__((used)) static int s5p_mfc_ctx_ready(struct s5p_mfc_ctx *ctx)
{

 if (ctx->src_queue_cnt >= 1 && ctx->state == MFCINST_GOT_INST)
  return 1;

 if (ctx->src_queue_cnt >= 1 &&
     ctx->state == MFCINST_RUNNING &&
     ctx->dst_queue_cnt >= ctx->pb_count)
  return 1;

 if (ctx->state == MFCINST_FINISHING &&
     ctx->dst_queue_cnt >= ctx->pb_count)
  return 1;

 if (ctx->src_queue_cnt >= 1 &&
     ctx->state == MFCINST_HEAD_PARSED &&
     ctx->capture_state == QUEUE_BUFS_MMAPED)
  return 1;

 if ((ctx->state == MFCINST_RES_CHANGE_INIT ||
  ctx->state == MFCINST_RES_CHANGE_FLUSH) &&
  ctx->dst_queue_cnt >= ctx->pb_count)
  return 1;
 if (ctx->state == MFCINST_RES_CHANGE_END &&
  ctx->src_queue_cnt >= 1)
  return 1;
 mfc_debug(2, "ctx is not ready\n");
 return 0;
}
