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
struct qlcnic_adapter {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*) ; 

int FUNC3(struct qlcnic_adapter *adapter)
{
	int err = 0;

	err = FUNC1(adapter);
	if (err)
		FUNC0(adapter->netdev,
			   "failed to set Rx coalescing parameters\n");

	err = FUNC2(adapter);
	if (err)
		FUNC0(adapter->netdev,
			   "failed to set Tx coalescing parameters\n");

	return err;
}