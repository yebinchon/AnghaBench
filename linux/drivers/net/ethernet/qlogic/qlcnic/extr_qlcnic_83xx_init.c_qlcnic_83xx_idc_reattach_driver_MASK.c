#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qlcnic_adapter {scalar_t__ portnum; int /*<<< orphan*/  dcb; TYPE_2__* nic_ops; TYPE_1__* ahw; } ;
struct TYPE_4__ {scalar_t__ (* init_driver ) (struct qlcnic_adapter*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  mailbox; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 
 int FUNC8 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC9 (struct qlcnic_adapter*) ; 

int FUNC10(struct qlcnic_adapter *adapter)
{
	int err;

	FUNC5(adapter->ahw->mailbox);
	FUNC1(adapter);

	FUNC4(adapter, 1);

	err = FUNC8(adapter);
	if (err)
		return err;

	FUNC1(adapter);

	if (FUNC0(adapter)) {
		FUNC3(adapter, 1);
		return -EIO;
	}

	if (adapter->nic_ops->init_driver(adapter)) {
		FUNC3(adapter, 1);
		return -EIO;
	}

	if (adapter->portnum == 0)
		FUNC7(adapter);

	FUNC6(adapter->dcb);
	FUNC2(adapter);

	return 0;
}