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
struct net_device {int dummy; } ;
struct bnxt_pf_info {int active_vfs; } ;
struct bnxt {struct bnxt_pf_info pf; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  BNXT_STATE_ABORT_ERR ; 
 int /*<<< orphan*/  BNXT_STATE_FW_RESET_DET ; 
 int ENODEV ; 
 int FUNC1 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 int FUNC4 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct bnxt* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct bnxt *bp = FUNC6(dev);
	int rc;

	if (FUNC8(BNXT_STATE_ABORT_ERR, &bp->state)) {
		FUNC5(bp->dev, "A previous firmware reset did not complete, aborting\n");
		return -ENODEV;
	}

	rc = FUNC4(bp, true);
	if (rc)
		return rc;
	rc = FUNC1(bp, true, true);
	if (rc) {
		FUNC4(bp, false);
	} else {
		if (FUNC7(BNXT_STATE_FW_RESET_DET, &bp->state) &&
		    FUNC0(bp)) {
			struct bnxt_pf_info *pf = &bp->pf;
			int n = pf->active_vfs;

			if (n)
				FUNC2(bp, &n, true);
		}
		FUNC3(bp);
	}

	return rc;
}