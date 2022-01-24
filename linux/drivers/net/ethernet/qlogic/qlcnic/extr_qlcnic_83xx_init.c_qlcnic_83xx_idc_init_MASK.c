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
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 

int FUNC6(struct qlcnic_adapter *adapter)
{
	int ret = -EIO;

	FUNC5(adapter);

	if (FUNC0(adapter))
		return ret;

	if (!FUNC1(adapter)) {
		if (FUNC3(adapter))
			return -EIO;
	} else {
		if (FUNC2(adapter))
			return -EIO;
	}

	FUNC4(adapter, 0, 1);

	return 0;
}