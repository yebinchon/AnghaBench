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
struct qlcnic_adapter {TYPE_1__* pdev; int /*<<< orphan*/  ahw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_IDC_DEV_FAILED ; 
 int /*<<< orphan*/  QLC_83XX_IDC_DEV_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC6(struct qlcnic_adapter *adapter,
					      int lock)
{
	if (lock) {
		if (FUNC4(adapter))
			return -EBUSY;
	}

	FUNC2(adapter, 0);
	FUNC0(adapter->ahw, QLC_83XX_IDC_DEV_STATE, QLC_83XX_IDC_DEV_FAILED);
	if (lock)
		FUNC5(adapter);

	FUNC3(adapter);
	FUNC1(&adapter->pdev->dev, "Device will enter failed state\n");

	return 0;
}