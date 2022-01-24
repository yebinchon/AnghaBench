#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_fw_dump {int enable; } ;
struct qlcnic_adapter {TYPE_1__* pdev; TYPE_2__* ahw; } ;
struct TYPE_5__ {struct qlcnic_fw_dump fw_dump; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_IDC_CTRL ; 
 int /*<<< orphan*/  QLC_83XX_IDC_DISABLE_FW_DUMP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 

int FUNC6(struct qlcnic_adapter *adapter)
{
	struct qlcnic_fw_dump *fw_dump = &adapter->ahw->fw_dump;
	u32 val;

	if (FUNC5(adapter)) {
		if (FUNC3(adapter))
			return -EBUSY;

		val = FUNC0(adapter->ahw, QLC_83XX_IDC_CTRL);
		val &= ~QLC_83XX_IDC_DISABLE_FW_DUMP;
		FUNC1(adapter->ahw, QLC_83XX_IDC_CTRL, val);

		FUNC4(adapter);
	} else {
		fw_dump->enable = true;
	}

	FUNC2(&adapter->pdev->dev, "FW dump enabled\n");

	return 0;
}