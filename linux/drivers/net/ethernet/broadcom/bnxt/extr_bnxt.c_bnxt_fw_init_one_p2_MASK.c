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
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int FUNC2 (struct bnxt*) ; 
 int FUNC3 (struct bnxt*) ; 
 int FUNC4 (struct bnxt*) ; 
 int FUNC5 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt*) ; 
 int FUNC7 (struct bnxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC12(struct bnxt *bp)
{
	int rc;

	/* Get the MAX capabilities for this function */
	rc = FUNC5(bp);
	if (rc) {
		FUNC10(bp->dev, "hwrm query capability failure rc: %x\n",
			   rc);
		return -ENODEV;
	}

	rc = FUNC2(bp);
	if (rc)
		FUNC11(bp->dev, "hwrm query adv flow mgnt failure rc: %d\n",
			    rc);

	rc = FUNC3(bp);
	if (rc)
		FUNC11(bp->dev, "hwrm query error recovery failure rc: %d\n",
			    rc);

	rc = FUNC4(bp);
	if (rc)
		return -ENODEV;

	rc = FUNC7(bp, NULL, 0);
	if (rc)
		return -ENODEV;

	FUNC6(bp);
	FUNC9(bp);
	FUNC8(bp);
	FUNC1(bp);
	FUNC0(bp);
	return 0;
}