#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bnxt_ctx_mem_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  qp_mem; int /*<<< orphan*/  srq_mem; int /*<<< orphan*/  cq_mem; int /*<<< orphan*/  vnic_mem; int /*<<< orphan*/  stat_mem; int /*<<< orphan*/  mrav_mem; int /*<<< orphan*/  tim_mem; int /*<<< orphan*/ ** tqm_mem; } ;
struct bnxt {int max_q; struct bnxt_ctx_mem_info* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_CTX_FLAG_INITED ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct bnxt *bp)
{
	struct bnxt_ctx_mem_info *ctx = bp->ctx;
	int i;

	if (!ctx)
		return;

	if (ctx->tqm_mem[0]) {
		for (i = 0; i < bp->max_q + 1; i++)
			FUNC0(bp, ctx->tqm_mem[i]);
		FUNC1(ctx->tqm_mem[0]);
		ctx->tqm_mem[0] = NULL;
	}

	FUNC0(bp, &ctx->tim_mem);
	FUNC0(bp, &ctx->mrav_mem);
	FUNC0(bp, &ctx->stat_mem);
	FUNC0(bp, &ctx->vnic_mem);
	FUNC0(bp, &ctx->cq_mem);
	FUNC0(bp, &ctx->srq_mem);
	FUNC0(bp, &ctx->qp_mem);
	ctx->flags &= ~BNXT_CTX_FLAG_INITED;
}