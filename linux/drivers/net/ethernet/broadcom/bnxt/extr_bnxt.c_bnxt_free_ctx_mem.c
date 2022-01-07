
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_ctx_mem_info {int flags; int qp_mem; int srq_mem; int cq_mem; int vnic_mem; int stat_mem; int mrav_mem; int tim_mem; int ** tqm_mem; } ;
struct bnxt {int max_q; struct bnxt_ctx_mem_info* ctx; } ;


 int BNXT_CTX_FLAG_INITED ;
 int bnxt_free_ctx_pg_tbls (struct bnxt*,int *) ;
 int kfree (int *) ;

__attribute__((used)) static void bnxt_free_ctx_mem(struct bnxt *bp)
{
 struct bnxt_ctx_mem_info *ctx = bp->ctx;
 int i;

 if (!ctx)
  return;

 if (ctx->tqm_mem[0]) {
  for (i = 0; i < bp->max_q + 1; i++)
   bnxt_free_ctx_pg_tbls(bp, ctx->tqm_mem[i]);
  kfree(ctx->tqm_mem[0]);
  ctx->tqm_mem[0] = ((void*)0);
 }

 bnxt_free_ctx_pg_tbls(bp, &ctx->tim_mem);
 bnxt_free_ctx_pg_tbls(bp, &ctx->mrav_mem);
 bnxt_free_ctx_pg_tbls(bp, &ctx->stat_mem);
 bnxt_free_ctx_pg_tbls(bp, &ctx->vnic_mem);
 bnxt_free_ctx_pg_tbls(bp, &ctx->cq_mem);
 bnxt_free_ctx_pg_tbls(bp, &ctx->srq_mem);
 bnxt_free_ctx_pg_tbls(bp, &ctx->qp_mem);
 ctx->flags &= ~BNXT_CTX_FLAG_INITED;
}
