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
typedef  int u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ OCXL_DVSEC_AFU_CTRL_PASID_BASE ; 
 scalar_t__ OCXL_DVSEC_AFU_CTRL_PASID_EN ; 
 int OCXL_DVSEC_PASID_LOG_MASK ; 
 int OCXL_DVSEC_PASID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int) ; 

void FUNC3(struct pci_dev *dev, int pos, int pasid_base,
			u32 pasid_count_log)
{
	u8 val8;
	u32 val32;

	val8 = pasid_count_log & OCXL_DVSEC_PASID_LOG_MASK;
	FUNC1(dev, pos + OCXL_DVSEC_AFU_CTRL_PASID_EN, val8);

	FUNC0(dev, pos + OCXL_DVSEC_AFU_CTRL_PASID_BASE,
			&val32);
	val32 &= ~OCXL_DVSEC_PASID_MASK;
	val32 |= pasid_base & OCXL_DVSEC_PASID_MASK;
	FUNC2(dev, pos + OCXL_DVSEC_AFU_CTRL_PASID_BASE,
			val32);
}