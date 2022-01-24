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
struct e1000_adapter {scalar_t__ msix_entries; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*) ; 

void FUNC5(struct e1000_adapter *adapter)
{
	/* hardware has been reset, we need to reload some things */
	FUNC1(adapter);

	FUNC0(__E1000_DOWN, &adapter->state);

	if (adapter->msix_entries)
		FUNC2(adapter);
	FUNC3(adapter);

	/* Tx queue started by watchdog timer when link is up */

	FUNC4(adapter);
}