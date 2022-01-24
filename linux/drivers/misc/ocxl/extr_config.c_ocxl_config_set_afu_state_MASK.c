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
typedef  int u8 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ OCXL_DVSEC_AFU_CTRL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int) ; 

void FUNC2(struct pci_dev *dev, int pos, int enable)
{
	u8 val;

	FUNC0(dev, pos + OCXL_DVSEC_AFU_CTRL_ENABLE, &val);
	if (enable)
		val |= 1;
	else
		val &= 0xFE;
	FUNC1(dev, pos + OCXL_DVSEC_AFU_CTRL_ENABLE, val);
}