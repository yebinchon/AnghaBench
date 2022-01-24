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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ngene_info {int /*<<< orphan*/  name; } ;
struct ngene {int i2c_current_bus; struct ngene_info* card_info; struct pci_dev* pci_dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct ngene*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ngene*) ; 
 int FUNC3 (struct ngene*) ; 
 int FUNC4 (struct ngene*) ; 
 int /*<<< orphan*/  FUNC5 (struct ngene*) ; 
 int FUNC6 (struct ngene*) ; 
 int /*<<< orphan*/  FUNC7 (struct ngene*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 scalar_t__ FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,struct ngene*) ; 
 struct ngene* FUNC11 (int) ; 

int FUNC12(struct pci_dev *pci_dev, const struct pci_device_id *id)
{
	struct ngene *dev;
	int stat = 0;

	if (FUNC9(pci_dev) < 0)
		return -ENODEV;

	dev = FUNC11(sizeof(struct ngene));
	if (dev == NULL) {
		stat = -ENOMEM;
		goto fail0;
	}

	dev->pci_dev = pci_dev;
	dev->card_info = (struct ngene_info *)id->driver_data;
	FUNC1(&pci_dev->dev, "Found %s\n", dev->card_info->name);

	FUNC10(pci_dev, dev);

	/* Alloc buffers and start nGene */
	stat = FUNC4(dev);
	if (stat < 0)
		goto fail1;
	stat = FUNC6(dev);
	if (stat < 0)
		goto fail1;

	FUNC0(dev);

	stat = FUNC3(dev);
	if (stat < 0)
		goto fail1;


	dev->i2c_current_bus = -1;

	/* Register DVB adapters and devices for both channels */
	stat = FUNC2(dev);
	if (stat < 0)
		goto fail2;

	return 0;

fail2:
	FUNC7(dev);
fail1:
	FUNC5(dev);
fail0:
	FUNC8(pci_dev);
	return stat;
}