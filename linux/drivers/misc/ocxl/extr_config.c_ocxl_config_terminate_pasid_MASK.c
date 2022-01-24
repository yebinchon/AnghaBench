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

/* Variables and functions */
 int FUNC0 (int) ; 
 int EBUSY ; 
 scalar_t__ FUNC1 (int,int) ; 
 unsigned long HZ ; 
 unsigned long OCXL_CFG_TIMEOUT ; 
 scalar_t__ OCXL_DVSEC_AFU_CTRL_TERM_PASID ; 
 int OCXL_DVSEC_PASID_MASK ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,scalar_t__,int) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

int FUNC7(struct pci_dev *dev, int afu_control, int pasid)
{
	u32 val;
	unsigned long timeout;

	FUNC4(dev, afu_control + OCXL_DVSEC_AFU_CTRL_TERM_PASID,
			&val);
	if (FUNC1(val, 20)) {
		FUNC3(&dev->dev,
			"Can't terminate PASID %#x, previous termination didn't complete\n",
			pasid);
		return -EBUSY;
	}

	val &= ~OCXL_DVSEC_PASID_MASK;
	val |= pasid & OCXL_DVSEC_PASID_MASK;
	val |= FUNC0(20);
	FUNC5(dev,
			afu_control + OCXL_DVSEC_AFU_CTRL_TERM_PASID,
			val);

	timeout = jiffies + (HZ * OCXL_CFG_TIMEOUT);
	FUNC4(dev, afu_control + OCXL_DVSEC_AFU_CTRL_TERM_PASID,
			&val);
	while (FUNC1(val, 20)) {
		if (FUNC6(jiffies, timeout)) {
			FUNC3(&dev->dev,
				"Timeout while waiting for AFU to terminate PASID %#x\n",
				pasid);
			return -EBUSY;
		}
		FUNC2();
		FUNC4(dev,
				afu_control + OCXL_DVSEC_AFU_CTRL_TERM_PASID,
				&val);
	}
	return 0;
}