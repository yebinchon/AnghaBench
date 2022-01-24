#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int dummy; } ;
struct ocxl_fn {int /*<<< orphan*/  afu_list; } ;
struct ocxl_afu {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct pci_dev*,struct ocxl_afu*) ; 
 struct ocxl_afu* FUNC1 (struct ocxl_fn*) ; 
 int FUNC2 (struct ocxl_afu*,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocxl_afu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ocxl_afu*) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev, struct ocxl_fn *fn, u8 afu_idx)
{
	int rc;
	struct ocxl_afu *afu;

	afu = FUNC1(fn);
	if (!afu)
		return -ENOMEM;

	rc = FUNC2(afu, afu_idx, dev);
	if (rc) {
		FUNC5(afu);
		return rc;
	}

	rc = FUNC0(dev, afu);
	if (rc) {
		FUNC3(afu);
		FUNC5(afu);
		return rc;
	}

	FUNC4(&afu->list, &fn->afu_list);

	return 0;
}