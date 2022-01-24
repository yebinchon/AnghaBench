#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hwrm_ring_cmpl_ring_cfg_aggint_params_input {int /*<<< orphan*/  ring_id; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  coal_bufs; int /*<<< orphan*/  coal_ticks; } ;
struct bnxt_cp_ring_info {TYPE_1__ rx_ring_coal; } ;
struct bnxt_napi {int /*<<< orphan*/  rx_ring; struct bnxt_cp_ring_info cp_ring; } ;
struct bnxt_coal {int /*<<< orphan*/  coal_bufs; int /*<<< orphan*/  coal_ticks; } ;
struct bnxt {int /*<<< orphan*/  rx_coal; } ;
typedef  int /*<<< orphan*/  req_rx ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_RING_CMPL_RING_CFG_AGGINT_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_ring_cmpl_ring_cfg_aggint_params_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,struct bnxt_coal*,struct hwrm_ring_cmpl_ring_cfg_aggint_params_input*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bnxt*,struct hwrm_ring_cmpl_ring_cfg_aggint_params_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt_coal*,int /*<<< orphan*/ *,int) ; 

int FUNC6(struct bnxt *bp, struct bnxt_napi *bnapi)
{
	struct hwrm_ring_cmpl_ring_cfg_aggint_params_input req_rx = {0};
	struct bnxt_cp_ring_info *cpr = &bnapi->cp_ring;
	struct bnxt_coal coal;

	/* Tick values in micro seconds.
	 * 1 coal_buf x bufs_per_record = 1 completion record.
	 */
	FUNC5(&coal, &bp->rx_coal, sizeof(struct bnxt_coal));

	coal.coal_ticks = cpr->rx_ring_coal.coal_ticks;
	coal.coal_bufs = cpr->rx_ring_coal.coal_bufs;

	if (!bnapi->rx_ring)
		return -ENODEV;

	FUNC1(bp, &req_rx,
			       HWRM_RING_CMPL_RING_CFG_AGGINT_PARAMS, -1, -1);

	FUNC2(bp, &coal, &req_rx);

	req_rx.ring_id = FUNC3(FUNC0(bp, bnapi->rx_ring));

	return FUNC4(bp, &req_rx, sizeof(req_rx),
				 HWRM_CMD_TIMEOUT);
}