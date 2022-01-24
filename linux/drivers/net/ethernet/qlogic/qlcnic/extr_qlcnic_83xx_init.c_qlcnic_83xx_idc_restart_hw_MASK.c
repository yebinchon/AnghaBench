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
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int) ; 
 int FUNC2 (struct qlcnic_adapter*,int) ; 
 int FUNC3 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter, int lock)
{
	int ret = 0;

	ret = FUNC3(adapter);

	if (ret) {
		FUNC1(adapter, lock);
	} else {
		FUNC0(adapter, lock);
		ret = FUNC2(adapter, lock);
	}

	return ret;
}