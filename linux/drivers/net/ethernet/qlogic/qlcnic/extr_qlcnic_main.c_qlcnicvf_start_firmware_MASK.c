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
struct qlcnic_adapter {scalar_t__ need_fw_reset; } ;

/* Variables and functions */
 int FUNC0 (struct qlcnic_adapter*) ; 
 int FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int
FUNC5(struct qlcnic_adapter *adapter)
{
	int err;

	err = FUNC0(adapter);
	if (err)
		return err;

	err = FUNC1(adapter);
	if (err)
		return err;

	err = FUNC3(adapter);
	if (err)
		return err;

	FUNC2(adapter);

	err = FUNC4(adapter);
	if (err)
		return err;

	adapter->need_fw_reset = 0;

	return err;
}