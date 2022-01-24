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
struct hwrm_stat_ctx_free_input {int /*<<< orphan*/  stat_ctx_id; int /*<<< orphan*/  member_0; } ;
struct bnxt_cp_ring_info {scalar_t__ hw_stats_ctx_id; } ;
struct bnxt_napi {struct bnxt_cp_ring_info cp_ring; } ;
struct bnxt {int cp_nr_rings; int /*<<< orphan*/  hwrm_cmd_lock; struct bnxt_napi** bnapi; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_STAT_CTX_FREE ; 
 scalar_t__ INVALID_STATS_CTX_ID ; 
 int FUNC1 (struct bnxt*,struct hwrm_stat_ctx_free_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,struct hwrm_stat_ctx_free_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct bnxt *bp)
{
	int rc = 0, i;
	struct hwrm_stat_ctx_free_input req = {0};

	if (!bp->bnapi)
		return 0;

	if (FUNC0(bp))
		return 0;

	FUNC2(bp, &req, HWRM_STAT_CTX_FREE, -1, -1);

	FUNC4(&bp->hwrm_cmd_lock);
	for (i = 0; i < bp->cp_nr_rings; i++) {
		struct bnxt_napi *bnapi = bp->bnapi[i];
		struct bnxt_cp_ring_info *cpr = &bnapi->cp_ring;

		if (cpr->hw_stats_ctx_id != INVALID_STATS_CTX_ID) {
			req.stat_ctx_id = FUNC3(cpr->hw_stats_ctx_id);

			rc = FUNC1(bp, &req, sizeof(req),
						HWRM_CMD_TIMEOUT);

			cpr->hw_stats_ctx_id = INVALID_STATS_CTX_ID;
		}
	}
	FUNC5(&bp->hwrm_cmd_lock);
	return rc;
}