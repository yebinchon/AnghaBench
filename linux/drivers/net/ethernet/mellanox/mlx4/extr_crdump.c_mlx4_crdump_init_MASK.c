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
struct pci_dev {int dummy; } ;
struct mlx4_fw_crdump {int snapshot_enable; void* region_fw_health; void* region_crspace; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pdev; struct mlx4_fw_crdump crdump; } ;

/* Variables and functions */
 int /*<<< orphan*/  HEALTH_BUFFER_SIZE ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MAX_NUM_OF_DUMPS_TO_STORE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 struct devlink* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  region_cr_space_str ; 
 int /*<<< orphan*/  region_fw_health_str ; 

int FUNC7(struct mlx4_dev *dev)
{
	struct devlink *devlink = FUNC6(FUNC3(dev));
	struct mlx4_fw_crdump *crdump = &dev->persist->crdump;
	struct pci_dev *pdev = dev->persist->pdev;

	crdump->snapshot_enable = false;

	/* Create cr-space region */
	crdump->region_crspace =
		FUNC2(devlink,
				      region_cr_space_str,
				      MAX_NUM_OF_DUMPS_TO_STORE,
				      FUNC5(pdev, 0));
	if (FUNC0(crdump->region_crspace))
		FUNC4(dev, "crdump: create devlink region %s err %ld\n",
			  region_cr_space_str,
			  FUNC1(crdump->region_crspace));

	/* Create fw-health region */
	crdump->region_fw_health =
		FUNC2(devlink,
				      region_fw_health_str,
				      MAX_NUM_OF_DUMPS_TO_STORE,
				      HEALTH_BUFFER_SIZE);
	if (FUNC0(crdump->region_fw_health))
		FUNC4(dev, "crdump: create devlink region %s err %ld\n",
			  region_fw_health_str,
			  FUNC1(crdump->region_fw_health));

	return 0;
}