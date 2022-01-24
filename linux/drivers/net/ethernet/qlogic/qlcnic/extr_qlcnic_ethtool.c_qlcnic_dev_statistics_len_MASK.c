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
struct qlcnic_adapter {int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int QLCNIC_ESWITCH_ENABLED ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_device_gstrings_stats ; 

__attribute__((used)) static int FUNC5(struct qlcnic_adapter *adapter)
{
	int len = -1;

	if (FUNC1(adapter)) {
		len = FUNC2(adapter);
		if (adapter->flags & QLCNIC_ESWITCH_ENABLED)
			len += FUNC0(qlcnic_device_gstrings_stats);
	} else if (FUNC3(adapter)) {
		len = FUNC4(adapter);
	}

	return len;
}