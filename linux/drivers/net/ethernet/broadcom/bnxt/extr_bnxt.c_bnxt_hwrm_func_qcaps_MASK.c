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
struct bnxt {int hwrm_spec_code; int /*<<< orphan*/  fw_cap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_FW_CAP_NEW_RM ; 
 int FUNC0 (struct bnxt*) ; 
 int FUNC1 (struct bnxt*) ; 
 int FUNC2 (struct bnxt*,int) ; 
 int FUNC3 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct bnxt *bp)
{
	int rc;

	rc = FUNC0(bp);
	if (rc)
		return rc;
	rc = FUNC3(bp);
	if (rc) {
		FUNC4(bp->dev, "hwrm query qportcfg failure rc: %d\n", rc);
		return rc;
	}
	if (bp->hwrm_spec_code >= 0x10803) {
		rc = FUNC1(bp);
		if (rc)
			return rc;
		rc = FUNC2(bp, true);
		if (!rc)
			bp->fw_cap |= BNXT_FW_CAP_NEW_RM;
	}
	return 0;
}