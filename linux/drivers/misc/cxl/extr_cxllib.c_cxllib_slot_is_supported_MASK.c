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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 

bool FUNC4(struct pci_dev *dev, unsigned long flags)
{
	int rc;
	u32 phb_index;
	u64 chip_id, capp_unit_id;

	/* No flags currently supported */
	if (flags)
		return false;

	if (!FUNC0(CPU_FTR_HVMODE))
		return false;

	if (!FUNC2())
		return false;

	if (FUNC3(dev))
		return false;

	/* on p9, some pci slots are not connected to a CAPP unit */
	rc = FUNC1(dev, &chip_id, &phb_index, &capp_unit_id);
	if (rc)
		return false;

	return true;
}