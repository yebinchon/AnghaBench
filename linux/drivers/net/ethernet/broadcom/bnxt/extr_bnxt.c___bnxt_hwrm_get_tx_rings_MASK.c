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
typedef  int /*<<< orphan*/  u16 ;
struct hwrm_func_qcfg_output {int /*<<< orphan*/  alloc_tx_rings; } ;
struct hwrm_func_qcfg_input {int /*<<< orphan*/  fid; int /*<<< orphan*/  member_0; } ;
struct bnxt {int hwrm_spec_code; struct hwrm_func_qcfg_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_FUNC_QCFG ; 
 int FUNC0 (struct bnxt*,struct hwrm_func_qcfg_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_func_qcfg_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct bnxt *bp, u16 fid, int *tx_rings)
{
	struct hwrm_func_qcfg_output *resp = bp->hwrm_cmd_resp_addr;
	struct hwrm_func_qcfg_input req = {0};
	int rc;

	if (bp->hwrm_spec_code < 0x10601)
		return 0;

	FUNC1(bp, &req, HWRM_FUNC_QCFG, -1, -1);
	req.fid = FUNC2(fid);
	rc = FUNC0(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (!rc)
		*tx_rings = FUNC3(resp->alloc_tx_rings);

	return rc;
}