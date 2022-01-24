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
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ocxl_fn_config {int dvsec_afu_info_pos; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int,int) ; 
 unsigned long HZ ; 
 unsigned long OCXL_CFG_TIMEOUT ; 
 scalar_t__ OCXL_DVSEC_AFU_INFO_DATA ; 
 scalar_t__ OCXL_DVSEC_AFU_INFO_OFF ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev, struct ocxl_fn_config *fn,
			int offset, u32 *data)
{
	u32 val;
	unsigned long timeout = jiffies + (HZ * OCXL_CFG_TIMEOUT);
	int pos = fn->dvsec_afu_info_pos;

	/* Protect 'data valid' bit */
	if (FUNC0(offset, 31)) {
		FUNC2(&dev->dev, "Invalid offset in AFU info DVSEC\n");
		return -EINVAL;
	}

	FUNC4(dev, pos + OCXL_DVSEC_AFU_INFO_OFF, offset);
	FUNC3(dev, pos + OCXL_DVSEC_AFU_INFO_OFF, &val);
	while (!FUNC0(val, 31)) {
		if (FUNC5(jiffies, timeout)) {
			FUNC2(&dev->dev,
				"Timeout while reading AFU info DVSEC (offset=%d)\n",
				offset);
			return -EBUSY;
		}
		FUNC1();
		FUNC3(dev, pos + OCXL_DVSEC_AFU_INFO_OFF, &val);
	}
	FUNC3(dev, pos + OCXL_DVSEC_AFU_INFO_DATA, data);
	return 0;
}