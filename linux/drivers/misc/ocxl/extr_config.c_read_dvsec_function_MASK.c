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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ocxl_fn_config {int dvsec_function_pos; int max_afu_index; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  OCXL_DVSEC_FUNC_ID ; 
 scalar_t__ OCXL_DVSEC_FUNC_OFF_INDEX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev, struct ocxl_fn_config *fn)
{
	int pos, afu_present;
	u32 val;

	pos = FUNC4(dev, OCXL_DVSEC_FUNC_ID);
	if (!pos) {
		FUNC3(&dev->dev, "Can't find function DVSEC\n");
		return -ENODEV;
	}
	fn->dvsec_function_pos = pos;

	FUNC5(dev, pos + OCXL_DVSEC_FUNC_OFF_INDEX, &val);
	afu_present = FUNC0(val, 31);
	if (!afu_present) {
		fn->max_afu_index = -1;
		FUNC2(&dev->dev, "Function doesn't define any AFU\n");
		goto out;
	}
	fn->max_afu_index = FUNC1(val, 24, 29);

out:
	FUNC2(&dev->dev, "Function DVSEC:\n");
	FUNC2(&dev->dev, "  Max AFU index = %d\n", fn->max_afu_index);
	return 0;
}