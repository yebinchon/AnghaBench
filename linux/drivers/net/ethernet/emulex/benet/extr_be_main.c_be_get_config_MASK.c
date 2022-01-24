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
typedef  int /*<<< orphan*/  u16 ;
struct be_adapter {TYPE_1__* pdev; int /*<<< orphan*/  wol_en; int /*<<< orphan*/  msg_enable; int /*<<< orphan*/  fat_dump_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int FW_LOG_LEVEL_DEFAULT ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int FUNC2 (struct be_adapter*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct be_adapter*) ; 
 int FUNC6 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct be_adapter*) ; 
 scalar_t__ FUNC8 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct be_adapter *adapter)
{
	int status, level;
	u16 profile_id;

	status = FUNC3(adapter);
	if (status)
		return status;

	status = FUNC6(adapter);
	if (status)
		return status;

	if (!FUNC10(adapter) && FUNC8(adapter))
		FUNC4(adapter, &adapter->fat_dump_len);

	if (FUNC0(adapter)) {
		level = FUNC5(adapter);
		adapter->msg_enable =
			level <= FW_LOG_LEVEL_DEFAULT ? NETIF_MSG_HW : 0;
	}

	FUNC1(adapter);
	FUNC11(adapter->pdev, PCI_D3hot, adapter->wol_en);
	FUNC11(adapter->pdev, PCI_D3cold, adapter->wol_en);

	FUNC7(adapter);

	if (FUNC8(adapter)) {
		status = FUNC2(adapter, &profile_id);
		if (!status)
			FUNC9(&adapter->pdev->dev,
				 "Using profile 0x%x\n", profile_id);
	}

	return 0;
}