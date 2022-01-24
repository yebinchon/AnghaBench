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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ bus; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_GIO_MASTER_DISABLE ; 
 scalar_t__ E1000_ERR_MASTER_REQUESTS_PENDING ; 
 int /*<<< orphan*/  E1000_STATUS ; 
 int E1000_STATUS_GIO_MASTER_ENABLE ; 
 scalar_t__ MASTER_DISABLE_TIMEOUT ; 
 scalar_t__ e1000_bus_type_pci_express ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

s32 FUNC4(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 timeout = MASTER_DISABLE_TIMEOUT;
	s32 ret_val = 0;

	if (hw->bus.type != e1000_bus_type_pci_express)
		goto out;

	ctrl = FUNC1(E1000_CTRL);
	ctrl |= E1000_CTRL_GIO_MASTER_DISABLE;
	FUNC3(E1000_CTRL, ctrl);

	while (timeout) {
		if (!(FUNC1(E1000_STATUS) &
		      E1000_STATUS_GIO_MASTER_ENABLE))
			break;
		FUNC2(100);
		timeout--;
	}

	if (!timeout) {
		FUNC0("Master requests are pending.\n");
		ret_val = -E1000_ERR_MASTER_REQUESTS_PENDING;
		goto out;
	}

out:
	return ret_val;
}