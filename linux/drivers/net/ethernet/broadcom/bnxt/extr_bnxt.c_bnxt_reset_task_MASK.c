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
 int /*<<< orphan*/  FUNC0 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int FUNC2 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct bnxt *bp, bool silent)
{
	if (!silent)
		FUNC1(bp);
	if (FUNC5(bp->dev)) {
		int rc;

		if (!silent)
			FUNC4(bp);
		FUNC0(bp, false, false);
		rc = FUNC2(bp, false, false);
		if (!silent && !rc)
			FUNC3(bp);
	}
}