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
typedef  scalar_t__ u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ max_afu_index; } ;
struct ocxl_fn {TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct ocxl_fn* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ocxl_fn*) ; 
 scalar_t__ FUNC2 (struct ocxl_fn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (struct pci_dev*,struct ocxl_fn*,scalar_t__) ; 
 struct ocxl_fn* FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 

struct ocxl_fn *FUNC9(struct pci_dev *dev)
{
	int rc, afu_count = 0;
	u8 afu;
	struct ocxl_fn *fn;

	if (!FUNC8()) {
		FUNC3(&dev->dev, "Unsupported memory model (hash)\n");
		return FUNC0(-ENODEV);
	}

	fn = FUNC6(dev);
	if (FUNC1(fn)) {
		FUNC3(&dev->dev, "function init failed: %li\n",
			FUNC2(fn));
		return fn;
	}

	for (afu = 0; afu <= fn->config.max_afu_index; afu++) {
		rc = FUNC7(dev, &fn->config, afu);
		if (rc > 0) {
			rc = FUNC5(dev, fn, afu);
			if (rc) {
				FUNC3(&dev->dev,
					"Can't initialize AFU index %d\n", afu);
				continue;
			}
			afu_count++;
		}
	}
	FUNC4(&dev->dev, "%d AFU(s) configured\n", afu_count);
	return fn;
}