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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ocxl_afu_config {int dvsec_afu_control_pos; void* actag_supported; void* pasid_supported_log; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int ENODEV ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ OCXL_DVSEC_AFU_CTRL_ACTAG_SUP ; 
 scalar_t__ OCXL_DVSEC_AFU_CTRL_PASID_SUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev, struct ocxl_afu_config *afu)
{
	int pos;
	u8 val8;
	u16 val16;

	pos = FUNC2(dev, afu->idx);
	if (!pos) {
		FUNC1(&dev->dev, "Can't find AFU control DVSEC for AFU %d\n",
			afu->idx);
		return -ENODEV;
	}
	afu->dvsec_afu_control_pos = pos;

	FUNC3(dev, pos + OCXL_DVSEC_AFU_CTRL_PASID_SUP, &val8);
	afu->pasid_supported_log = FUNC0(val8, 0, 4);

	FUNC4(dev, pos + OCXL_DVSEC_AFU_CTRL_ACTAG_SUP, &val16);
	afu->actag_supported = FUNC0(val16, 0, 11);
	return 0;
}