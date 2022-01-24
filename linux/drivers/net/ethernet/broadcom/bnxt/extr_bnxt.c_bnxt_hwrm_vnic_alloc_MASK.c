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
typedef  size_t u16 ;
struct hwrm_vnic_alloc_output {int /*<<< orphan*/  vnic_id; } ;
struct hwrm_vnic_alloc_input {int /*<<< orphan*/  flags; int /*<<< orphan*/  member_0; } ;
struct bnxt_vnic_info {scalar_t__* fw_grp_ids; int /*<<< orphan*/  fw_vnic_id; scalar_t__* fw_rss_cos_lb_ctx; } ;
struct bnxt {int flags; int /*<<< orphan*/  hwrm_cmd_lock; TYPE_3__* grp_info; int /*<<< orphan*/  dev; TYPE_2__* rx_ring; struct bnxt_vnic_info* vnic_info; struct hwrm_vnic_alloc_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_6__ {scalar_t__ fw_grp_id; } ;
struct TYPE_5__ {TYPE_1__* bnapi; } ;
struct TYPE_4__ {unsigned int index; } ;

/* Variables and functions */
 int BNXT_FLAG_CHIP_P5 ; 
 unsigned int BNXT_MAX_CTX_PER_VNIC ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_VNIC_ALLOC ; 
 scalar_t__ INVALID_HW_RING_ID ; 
 int /*<<< orphan*/  VNIC_ALLOC_REQ_FLAGS_DEFAULT ; 
 int FUNC0 (struct bnxt*,struct hwrm_vnic_alloc_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_vnic_alloc_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct bnxt *bp, u16 vnic_id,
				unsigned int start_rx_ring_idx,
				unsigned int nr_rings)
{
	int rc = 0;
	unsigned int i, j, grp_idx, end_idx = start_rx_ring_idx + nr_rings;
	struct hwrm_vnic_alloc_input req = {0};
	struct hwrm_vnic_alloc_output *resp = bp->hwrm_cmd_resp_addr;
	struct bnxt_vnic_info *vnic = &bp->vnic_info[vnic_id];

	if (bp->flags & BNXT_FLAG_CHIP_P5)
		goto vnic_no_ring_grps;

	/* map ring groups to this vnic */
	for (i = start_rx_ring_idx, j = 0; i < end_idx; i++, j++) {
		grp_idx = bp->rx_ring[i].bnapi->index;
		if (bp->grp_info[grp_idx].fw_grp_id == INVALID_HW_RING_ID) {
			FUNC6(bp->dev, "Not enough ring groups avail:%x req:%x\n",
				   j, nr_rings);
			break;
		}
		vnic->fw_grp_ids[j] = bp->grp_info[grp_idx].fw_grp_id;
	}

vnic_no_ring_grps:
	for (i = 0; i < BNXT_MAX_CTX_PER_VNIC; i++)
		vnic->fw_rss_cos_lb_ctx[i] = INVALID_HW_RING_ID;
	if (vnic_id == 0)
		req.flags = FUNC2(VNIC_ALLOC_REQ_FLAGS_DEFAULT);

	FUNC1(bp, &req, HWRM_VNIC_ALLOC, -1, -1);

	FUNC4(&bp->hwrm_cmd_lock);
	rc = FUNC0(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (!rc)
		vnic->fw_vnic_id = FUNC3(resp->vnic_id);
	FUNC5(&bp->hwrm_cmd_lock);
	return rc;
}