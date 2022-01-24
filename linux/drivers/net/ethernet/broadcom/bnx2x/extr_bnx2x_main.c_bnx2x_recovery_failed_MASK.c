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
struct bnx2x {int /*<<< orphan*/  recovery_state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_RECOVERY_FAILED ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp)
{
	FUNC2(bp->dev, "Recovery has failed. Power cycle is needed.\n");

	/* Disconnect this device */
	FUNC3(bp->dev);

	/*
	 * Block ifup for all function on this engine until "process kill"
	 * or power cycle.
	 */
	FUNC1(bp);

	/* Shut down the power */
	FUNC0(bp, PCI_D3hot);

	bp->recovery_state = BNX2X_RECOVERY_FAILED;

	FUNC4();
}