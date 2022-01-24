#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct be_resources {int /*<<< orphan*/  member_0; } ;
struct be_adapter {TYPE_1__* pdev; int /*<<< orphan*/  pool_res; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ,struct be_resources*) ; 
 int FUNC1 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_resources*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct be_adapter*) ; 

__attribute__((used)) static void FUNC8(struct be_adapter *adapter)
{
	int old_vfs = FUNC5(adapter->pdev);
	struct  be_resources vft_res = {0};
	int status;

	FUNC2(adapter);

	if (!old_vfs)
		FUNC6(adapter->pdev, FUNC3(adapter));

	/* When the HW is in SRIOV capable configuration, the PF-pool
	 * resources are given to PF during driver load, if there are no
	 * old VFs. This facility is not available in BE3 FW.
	 * Also, this is done by FW in Lancer chip.
	 */
	if (FUNC7(adapter) && FUNC3(adapter) && !old_vfs) {
		FUNC0(adapter, 0, &vft_res);
		status = FUNC1(adapter, adapter->pool_res, 0,
						 &vft_res);
		if (status)
			FUNC4(&adapter->pdev->dev,
				"Failed to optimize SRIOV resources\n");
	}
}