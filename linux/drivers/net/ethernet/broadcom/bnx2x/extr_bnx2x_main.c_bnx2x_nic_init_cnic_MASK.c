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
struct bnx2x {int /*<<< orphan*/  cnic_sb_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_VF_ID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct bnx2x *bp)
{
	if (!FUNC0(bp))
		FUNC3(bp);

	FUNC5(bp, bp->cnic_sb_mapping,
		      BNX2X_VF_ID_INVALID, false,
		      FUNC1(bp), FUNC2(bp));

	/* ensure status block indices were read */
	FUNC8();
	FUNC4(bp);
	FUNC6(bp);

	/* flush all */
	FUNC7();
}