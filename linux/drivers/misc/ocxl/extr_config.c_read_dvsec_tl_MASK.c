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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  devfn; } ;
struct ocxl_fn_config {int dvsec_tl_pos; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  OCXL_DVSEC_TL_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *dev, struct ocxl_fn_config *fn)
{
	int pos;

	pos = FUNC2(dev, OCXL_DVSEC_TL_ID);
	if (!pos && FUNC0(dev->devfn) == 0) {
		FUNC1(&dev->dev, "Can't find TL DVSEC\n");
		return -ENODEV;
	}
	if (pos && FUNC0(dev->devfn) != 0) {
		FUNC1(&dev->dev, "TL DVSEC is only allowed on function 0\n");
		return -ENODEV;
	}
	fn->dvsec_tl_pos = pos;
	return 0;
}