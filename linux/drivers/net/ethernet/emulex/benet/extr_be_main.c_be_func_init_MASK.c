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
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_CLEAR_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct be_adapter*) ; 
 int FUNC2 (struct be_adapter*) ; 
 int FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*,int) ; 
 scalar_t__ FUNC5 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct be_adapter *adapter)
{
	int status;

	status = FUNC3(adapter);
	if (status)
		return status;

	/* FW is now ready; clear errors to allow cmds/doorbell */
	FUNC0(adapter, BE_CLEAR_ALL);

	if (FUNC5(adapter)) {
		status = FUNC2(adapter);
		if (status)
			return status;

		/* Wait for interrupts to quiesce after an FLR */
		FUNC6(100);
	}

	/* Tell FW we're ready to fire cmds */
	status = FUNC1(adapter);
	if (status)
		return status;

	/* Allow interrupts for other ULPs running on NIC function */
	FUNC4(adapter, true);

	return 0;
}