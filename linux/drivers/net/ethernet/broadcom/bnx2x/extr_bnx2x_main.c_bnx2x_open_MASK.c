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
struct bnx2x {int stats_init; int /*<<< orphan*/  recovery_state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_RECOVERY_DONE ; 
 int /*<<< orphan*/  BNX2X_RECOVERY_FAILED ; 
 int FUNC1 (struct bnx2x*) ; 
 int EAGAIN ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  LOAD_OPEN ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 scalar_t__ FUNC3 (struct bnx2x*,int*,int) ; 
 int FUNC4 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*) ; 
 scalar_t__ FUNC10 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 struct bnx2x* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev)
{
	struct bnx2x *bp = FUNC12(dev);
	int rc;

	bp->stats_init = true;

	FUNC13(dev);

	FUNC8(bp, PCI_D0);

	/* If parity had happen during the unload, then attentions
	 * and/or RECOVERY_IN_PROGRES may still be set. In this case we
	 * want the first function loaded on the current engine to
	 * complete the recovery.
	 * Parity recovery is only relevant for PF driver.
	 */
	if (FUNC2(bp)) {
		int other_engine = FUNC1(bp) ? 0 : 1;
		bool other_load_status, load_status;
		bool global = false;

		other_load_status = FUNC4(bp, other_engine);
		load_status = FUNC4(bp, FUNC1(bp));
		if (!FUNC7(bp, FUNC1(bp)) ||
		    FUNC3(bp, &global, true)) {
			do {
				/* If there are attentions and they are in a
				 * global blocks, set the GLOBAL_RESET bit
				 * regardless whether it will be this function
				 * that will complete the recovery or not.
				 */
				if (global)
					FUNC9(bp);

				/* Only the first function on the current
				 * engine should try to recover in open. In case
				 * of attentions in global blocks only the first
				 * in the chip should try to recover.
				 */
				if ((!load_status &&
				     (!global || !other_load_status)) &&
				      FUNC10(bp) &&
				      !FUNC5(bp)) {
					FUNC11(bp->dev,
						    "Recovered in open\n");
					break;
				}

				/* recovery has failed... */
				FUNC8(bp, PCI_D3hot);
				bp->recovery_state = BNX2X_RECOVERY_FAILED;

				FUNC0("Recovery flow hasn't been properly completed yet. Try again later.\n"
					  "If you still see this message after a few retries then power cycle is required.\n");

				return -EAGAIN;
			} while (0);
		}
	}

	bp->recovery_state = BNX2X_RECOVERY_DONE;
	rc = FUNC6(bp, LOAD_OPEN);
	if (rc)
		return rc;

	if (FUNC2(bp))
		FUNC14(dev);

	return 0;
}