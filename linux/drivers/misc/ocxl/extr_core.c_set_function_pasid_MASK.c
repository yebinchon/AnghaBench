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
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int max_pasid_log; } ;
struct ocxl_fn {scalar_t__ pasid_base; TYPE_2__ dev; TYPE_1__ config; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int,int) ; 
 int FUNC1 (struct pci_dev*,int*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ocxl_fn *fn)
{
	struct pci_dev *dev = FUNC2(fn->dev.parent);
	int rc, desired_count, max_count;

	/* A function may not require any PASID */
	if (fn->config.max_pasid_log < 0)
		return 0;

	rc = FUNC1(dev, &max_count);
	if (rc)
		return rc;

	desired_count = 1 << fn->config.max_pasid_log;

	if (desired_count > max_count) {
		FUNC0(&fn->dev,
			"Function requires more PASIDs than is available (%d vs. %d)\n",
			desired_count, max_count);
		return -ENOSPC;
	}

	fn->pasid_base = 0;
	return 0;
}