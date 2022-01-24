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
struct xlgmac_resources {int /*<<< orphan*/  addr; int /*<<< orphan*/  irq; } ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; int /*<<< orphan*/  irq; } ;
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCI_STD_RESOURCE_END ; 
 int /*<<< orphan*/  XLGMAC_DRV_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct xlgmac_resources*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct device*,struct xlgmac_resources*) ; 

__attribute__((used)) static int FUNC9(struct pci_dev *pcidev, const struct pci_device_id *id)
{
	struct device *dev = &pcidev->dev;
	struct xlgmac_resources res;
	int i, ret;

	ret = FUNC5(pcidev);
	if (ret) {
		FUNC1(dev, "ERROR: failed to enable device\n");
		return ret;
	}

	for (i = 0; i <= PCI_STD_RESOURCE_END; i++) {
		if (FUNC3(pcidev, i) == 0)
			continue;
		ret = FUNC6(pcidev, FUNC0(i), XLGMAC_DRV_NAME);
		if (ret)
			return ret;
		break;
	}

	FUNC4(pcidev);

	FUNC2(&res, 0, sizeof(res));
	res.irq = pcidev->irq;
	res.addr = FUNC7(pcidev)[i];

	return FUNC8(&pcidev->dev, &res);
}