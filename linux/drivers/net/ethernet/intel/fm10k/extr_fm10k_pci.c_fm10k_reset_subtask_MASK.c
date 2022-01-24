#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fm10k_intfc {TYPE_1__* pdev; int /*<<< orphan*/  netdev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_FLAG_RESET_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fm10k_intfc *interface)
{
	int err;

	if (!FUNC4(FM10K_FLAG_RESET_REQUESTED,
				interface->flags))
		return;

	/* If another thread has already prepared to reset the device, we
	 * should not attempt to handle a reset here, since we'd race with
	 * that thread. This may happen if we suspend the device or if the
	 * PCIe link is lost. In this case, we'll just ignore the RESET
	 * request, as it will (eventually) be taken care of when the thread
	 * which actually started the reset is finished.
	 */
	if (!FUNC2(interface))
		return;

	FUNC3(interface->netdev, "Reset interface\n");

	err = FUNC1(interface);
	if (err)
		FUNC0(&interface->pdev->dev,
			"fm10k_handle_reset failed: %d\n", err);
}