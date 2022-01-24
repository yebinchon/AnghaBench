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
struct ice_pf {int num_vfs_supported; int /*<<< orphan*/  flags; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  ICE_FLAG_SRIOV_CAPABLE ; 
 int /*<<< orphan*/  ICE_FLAG_SRIOV_ENA ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct ice_pf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_pf*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ice_pf *pf, int num_vfs)
{
	int pre_existing_vfs = FUNC5(pf->pdev);
	struct device *dev = &pf->pdev->dev;
	int err;

	if (!FUNC4(pf)) {
		FUNC0(dev, "Cannot enable SR-IOV, device not ready\n");
		return -EBUSY;
	}

	if (!FUNC7(ICE_FLAG_SRIOV_CAPABLE, pf->flags)) {
		FUNC0(dev, "This device is not capable of SR-IOV\n");
		return -ENODEV;
	}

	if (pre_existing_vfs && pre_existing_vfs != num_vfs)
		FUNC3(pf);
	else if (pre_existing_vfs && pre_existing_vfs == num_vfs)
		return num_vfs;

	if (num_vfs > pf->num_vfs_supported) {
		FUNC0(dev, "Can't enable %d VFs, max VFs supported is %d\n",
			num_vfs, pf->num_vfs_supported);
		return -ENOTSUPP;
	}

	FUNC1(dev, "Allocating %d VFs\n", num_vfs);
	err = FUNC2(pf, num_vfs);
	if (err) {
		FUNC0(dev, "Failed to enable SR-IOV: %d\n", err);
		return err;
	}

	FUNC6(ICE_FLAG_SRIOV_ENA, pf->flags);
	return num_vfs;
}