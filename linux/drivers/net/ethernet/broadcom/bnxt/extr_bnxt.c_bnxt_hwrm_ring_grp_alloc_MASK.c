#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct hwrm_ring_grp_alloc_output {int /*<<< orphan*/  ring_group_id; } ;
struct hwrm_ring_grp_alloc_input {void* sc; void* ar; void* rr; void* cr; int /*<<< orphan*/  member_0; } ;
struct bnxt {int flags; size_t rx_nr_rings; int /*<<< orphan*/  hwrm_cmd_lock; TYPE_3__* grp_info; TYPE_2__* rx_ring; struct hwrm_ring_grp_alloc_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_6__ {int /*<<< orphan*/  fw_grp_id; int /*<<< orphan*/  fw_stats_ctx; int /*<<< orphan*/  agg_fw_ring_id; int /*<<< orphan*/  rx_fw_ring_id; int /*<<< orphan*/  cp_fw_ring_id; } ;
struct TYPE_5__ {TYPE_1__* bnapi; } ;
struct TYPE_4__ {unsigned int index; } ;

/* Variables and functions */
 int BNXT_FLAG_CHIP_P5 ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_RING_GRP_ALLOC ; 
 int FUNC0 (struct bnxt*,struct hwrm_ring_grp_alloc_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_ring_grp_alloc_input*,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct bnxt *bp)
{
	u16 i;
	u32 rc = 0;

	if (bp->flags & BNXT_FLAG_CHIP_P5)
		return 0;

	FUNC4(&bp->hwrm_cmd_lock);
	for (i = 0; i < bp->rx_nr_rings; i++) {
		struct hwrm_ring_grp_alloc_input req = {0};
		struct hwrm_ring_grp_alloc_output *resp =
					bp->hwrm_cmd_resp_addr;
		unsigned int grp_idx = bp->rx_ring[i].bnapi->index;

		FUNC1(bp, &req, HWRM_RING_GRP_ALLOC, -1, -1);

		req.cr = FUNC2(bp->grp_info[grp_idx].cp_fw_ring_id);
		req.rr = FUNC2(bp->grp_info[grp_idx].rx_fw_ring_id);
		req.ar = FUNC2(bp->grp_info[grp_idx].agg_fw_ring_id);
		req.sc = FUNC2(bp->grp_info[grp_idx].fw_stats_ctx);

		rc = FUNC0(bp, &req, sizeof(req),
					HWRM_CMD_TIMEOUT);
		if (rc)
			break;

		bp->grp_info[grp_idx].fw_grp_id =
			FUNC3(resp->ring_group_id);
	}
	FUNC5(&bp->hwrm_cmd_lock);
	return rc;
}