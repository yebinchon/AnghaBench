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
struct hwrm_func_vf_cfg_input {int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int resv_tx_rings; } ;
struct bnxt {TYPE_1__ hw_resc; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_func_vf_cfg_input*,int,int,int,int,int,int) ; 
 int FUNC2 (struct bnxt*) ; 
 int FUNC3 (struct bnxt*,struct hwrm_func_vf_cfg_input*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct bnxt *bp, int tx_rings, int rx_rings,
			   int ring_grps, int cp_rings, int stats, int vnics)
{
	struct hwrm_func_vf_cfg_input req = {0};
	int rc;

	if (!FUNC0(bp)) {
		bp->hw_resc.resv_tx_rings = tx_rings;
		return 0;
	}

	FUNC1(bp, &req, tx_rings, rx_rings, ring_grps,
				     cp_rings, stats, vnics);
	rc = FUNC3(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (rc)
		return rc;

	rc = FUNC2(bp);
	return rc;
}