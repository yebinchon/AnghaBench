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
struct bnxt {int fw_cap; scalar_t__ hwrm_max_ext_req_len; } ;

/* Variables and functions */
 int BNXT_FW_CAP_KONG_MB_CHNL ; 
 int BNXT_FW_CAP_SHORT_CMD ; 
 scalar_t__ BNXT_HWRM_MAX_REQ_LEN ; 
 int ENODEV ; 
 int FUNC0 (struct bnxt*) ; 
 int FUNC1 (struct bnxt*) ; 
 int FUNC2 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 int FUNC4 (struct bnxt*) ; 

__attribute__((used)) static int FUNC5(struct bnxt *bp)
{
	int rc;

	bp->fw_cap = 0;
	rc = FUNC4(bp);
	if (rc)
		return rc;

	if (bp->fw_cap & BNXT_FW_CAP_KONG_MB_CHNL) {
		rc = FUNC1(bp);
		if (rc)
			bp->fw_cap &= ~BNXT_FW_CAP_KONG_MB_CHNL;
	}

	if ((bp->fw_cap & BNXT_FW_CAP_SHORT_CMD) ||
	    bp->hwrm_max_ext_req_len > BNXT_HWRM_MAX_REQ_LEN) {
		rc = FUNC0(bp);
		if (rc)
			return rc;
	}
	rc = FUNC2(bp);
	if (rc)
		return -ENODEV;

	FUNC3(bp);
	return 0;
}