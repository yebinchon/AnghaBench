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
struct igc_adapter {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IGC_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

void FUNC7(struct igc_adapter *adapter)
{
	FUNC0(FUNC4());
	while (FUNC5(__IGC_RESETTING, &adapter->state))
		FUNC6(1000, 2000);
	FUNC2(adapter);
	FUNC3(adapter);
	FUNC1(__IGC_RESETTING, &adapter->state);
}