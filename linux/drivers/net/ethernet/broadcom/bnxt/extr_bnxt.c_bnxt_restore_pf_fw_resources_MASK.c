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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 int FUNC4 (struct bnxt*) ; 
 int FUNC5 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct bnxt *bp)
{
	int rc;

	FUNC0();
	FUNC3(bp);

	if (FUNC9(bp->dev))
		FUNC1(bp, true, false);

	FUNC7(bp);
	FUNC2(bp);
	rc = FUNC4(bp);
	FUNC6(bp, rc);

	if (FUNC9(bp->dev)) {
		if (rc)
			FUNC8(bp->dev);
		else
			rc = FUNC5(bp, true, false);
	}

	return rc;
}