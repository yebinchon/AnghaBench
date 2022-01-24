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
struct be_resources {void* max_vfs; int /*<<< orphan*/  member_0; } ;
struct be_adapter {int num_vfs; TYPE_1__* pdev; struct be_resources pool_res; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE_PROFILE_TYPE ; 
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  MAX_VFS ; 
 int /*<<< orphan*/  RESOURCE_LIMITS ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*,struct be_resources*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct be_adapter*) ; 
 scalar_t__ FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 void* FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC10(struct be_adapter *adapter)
{
	struct be_resources res = {0};
	int max_vfs, old_vfs;

	FUNC2(adapter, &res, NULL, ACTIVE_PROFILE_TYPE,
				  RESOURCE_LIMITS, 0);

	/* Some old versions of BE3 FW don't report max_vfs value */
	if (FUNC0(adapter) && !res.max_vfs) {
		max_vfs = FUNC8(adapter->pdev);
		res.max_vfs = max_vfs > 0 ? FUNC6(MAX_VFS, max_vfs) : 0;
	}

	adapter->pool_res = res;

	/* If during previous unload of the driver, the VFs were not disabled,
	 * then we cannot rely on the PF POOL limits for the TotalVFs value.
	 * Instead use the TotalVFs value stored in the pci-dev struct.
	 */
	old_vfs = FUNC7(adapter->pdev);
	if (old_vfs) {
		FUNC5(&adapter->pdev->dev, "%d VFs are already enabled\n",
			 old_vfs);

		adapter->pool_res.max_vfs =
			FUNC8(adapter->pdev);
		adapter->num_vfs = old_vfs;
	}

	if (FUNC9(adapter) && FUNC4(adapter) && !old_vfs) {
		FUNC1(adapter);
		FUNC5(&adapter->pdev->dev,
			 "RSS can be enabled for all VFs if num_vfs <= %d\n",
			 FUNC3(adapter));
	}
	return 0;
}