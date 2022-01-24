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
struct ixgbe_adapter {TYPE_1__* netdev; int /*<<< orphan*/ * ptp_clock; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ixgbe_adapter *adapter)
{
	/* first, suspend PTP activity */
	FUNC1(adapter);

	/* disable the PTP clock device */
	if (adapter->ptp_clock) {
		FUNC2(adapter->ptp_clock);
		adapter->ptp_clock = NULL;
		FUNC0("removed PHC on %s\n",
			   adapter->netdev->name);
	}
}