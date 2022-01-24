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
typedef  int uint16_t ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {int /*<<< orphan*/  pdev; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PL_RST ; 
 int F_CRSTWRM ; 
 int F_CRSTWRMMODE ; 
 scalar_t__ T3_REV_B2 ; 
 scalar_t__ FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct adapter *adapter)
{
	int i, save_and_restore_pcie =
	    adapter->params.rev < T3_REV_B2 && FUNC0(adapter);
	uint16_t devid = 0;

	if (save_and_restore_pcie)
		FUNC4(adapter->pdev);
	FUNC5(adapter, A_PL_RST, F_CRSTWRM | F_CRSTWRMMODE);

	/*
	 * Delay. Give Some time to device to reset fully.
	 * XXX The delay time should be modified.
	 */
	for (i = 0; i < 10; i++) {
		FUNC1(50);
		FUNC2(adapter->pdev, 0x00, &devid);
		if (devid == 0x1425)
			break;
	}

	if (devid != 0x1425)
		return -1;

	if (save_and_restore_pcie)
		FUNC3(adapter->pdev);
	return 0;
}