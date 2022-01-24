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
struct bnxt {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 int FUNC3 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC6(struct bnxt *bp)
{
	int rc = 0;

	rc = FUNC0(bp, false);
	if (rc) {
		FUNC5(bp->dev, "bnxt_alloc_mem err: %x\n", rc);
		goto half_open_err;
	}
	rc = FUNC3(bp, false);
	if (rc) {
		FUNC5(bp->dev, "bnxt_init_nic err: %x\n", rc);
		goto half_open_err;
	}
	return 0;

half_open_err:
	FUNC2(bp);
	FUNC1(bp, false);
	FUNC4(bp->dev);
	return rc;
}