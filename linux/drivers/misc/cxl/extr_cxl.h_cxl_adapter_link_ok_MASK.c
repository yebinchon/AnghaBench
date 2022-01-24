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
struct pci_dev {int dummy; } ;
struct cxl_afu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct cxl {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(struct cxl *cxl, struct cxl_afu *afu)
{
	struct pci_dev *pdev;

	if (FUNC0(CPU_FTR_HVMODE)) {
		pdev = FUNC2(cxl->dev.parent);
		return !FUNC1(pdev);
	}
	return true;
}