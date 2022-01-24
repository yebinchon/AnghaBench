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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int BNX2X_PREV_WAIT_NEEDED ; 
 int /*<<< orphan*/  FW_MSG_CODE_DRV_LOAD_FUNCTION ; 
 int FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int FUNC5 (struct bnx2x*) ; 

__attribute__((used)) static int FUNC6(struct bnx2x *bp)
{
	int rc;

	FUNC0("Uncommon unload Flow\n");

	/* Test if previous unload process was already finished for this path */
	if (FUNC4(bp))
		return FUNC5(bp);

	FUNC0("Path is unmarked\n");

	/* Cannot proceed with FLR if UNDI is loaded, since FW does not match */
	if (FUNC3(bp))
		goto out;

	/* If function has FLR capabilities, and existing FW version matches
	 * the one required, then FLR will be sufficient to clean any residue
	 * left by previous driver
	 */
	rc = FUNC1(bp, FW_MSG_CODE_DRV_LOAD_FUNCTION, false);

	if (!rc) {
		/* fw version is good */
		FUNC0("FW version matches our own. Attempting FLR\n");
		rc = FUNC2(bp);
	}

	if (!rc) {
		/* FLR was performed */
		FUNC0("FLR successful\n");
		return 0;
	}

	FUNC0("Could not FLR\n");

out:
	/* Close the MCP request, return failure*/
	rc = FUNC5(bp);
	if (!rc)
		rc = BNX2X_PREV_WAIT_NEEDED;

	return rc;
}