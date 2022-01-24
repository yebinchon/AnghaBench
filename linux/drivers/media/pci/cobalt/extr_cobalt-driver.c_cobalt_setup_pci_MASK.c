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
typedef  int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct cobalt {int device_id; int /*<<< orphan*/  pci_dev; TYPE_1__ v4l2_dev; int /*<<< orphan*/ * bar1; void* bar0; int /*<<< orphan*/  card_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COBALT_SYS_CTRL_BASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PCI_CLASS_REVISION ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
#define  PCI_DEVICE_ID_COBALT 128 
 int /*<<< orphan*/  PCI_IRQ_MSI ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  cobalt_irq_handler ; 
 int /*<<< orphan*/  FUNC4 (struct cobalt*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct cobalt*) ; 
 int FUNC6 (struct cobalt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cobalt*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cobalt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cobalt*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct cobalt*) ; 
 int FUNC12 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct pci_dev*) ; 
 void* FUNC16 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int FUNC20 (struct pci_dev*,char*) ; 
 int FUNC21 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*) ; 
 int FUNC23 (struct cobalt*) ; 
 int FUNC24 (struct cobalt*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC26(struct cobalt *cobalt, struct pci_dev *pci_dev,
			    const struct pci_device_id *pci_id)
{
	u32 ctrl;
	int ret;

	FUNC1(1, "enabling pci device\n");

	ret = FUNC15(pci_dev);
	if (ret) {
		FUNC2("can't enable device\n");
		return ret;
	}
	FUNC22(pci_dev);
	FUNC17(pci_dev, PCI_CLASS_REVISION, &cobalt->card_rev);
	FUNC18(pci_dev, PCI_DEVICE_ID, &cobalt->device_id);

	switch (cobalt->device_id) {
	case PCI_DEVICE_ID_COBALT:
		FUNC3("PCI Express interface from Omnitek\n");
		break;
	default:
		FUNC3("PCI Express interface provider is unknown!\n");
		break;
	}

	if (FUNC24(cobalt) != 8) {
		FUNC8("PCI Express link width is %d lanes.\n",
				FUNC24(cobalt));
		if (FUNC23(cobalt) < 8)
			FUNC8("The current slot only supports %d lanes, for best performance 8 are needed\n",
					FUNC23(cobalt));
		if (FUNC24(cobalt) != FUNC23(cobalt)) {
			FUNC2("The card is most likely not seated correctly in the PCIe slot\n");
			ret = -EIO;
			goto err_disable;
		}
	}

	if (FUNC21(pci_dev, FUNC0(64))) {
		ret = FUNC21(pci_dev, FUNC0(32));
		if (ret) {
			FUNC2("no suitable DMA available\n");
			goto err_disable;
		}
	}

	ret = FUNC20(pci_dev, "cobalt");
	if (ret) {
		FUNC2("error requesting regions\n");
		goto err_disable;
	}

	FUNC5(cobalt);

	cobalt->bar0 = FUNC16(pci_dev, 0, 0);
	cobalt->bar1 = FUNC16(pci_dev, 1, 0);
	if (cobalt->bar1 == NULL) {
		cobalt->bar1 = FUNC16(pci_dev, 2, 0);
		FUNC3("64-bit BAR\n");
	}
	if (!cobalt->bar0 || !cobalt->bar1) {
		ret = -EIO;
		goto err_release;
	}

	/* Reset the video inputs before enabling any interrupts */
	ctrl = FUNC6(cobalt, COBALT_SYS_CTRL_BASE);
	FUNC9(cobalt, COBALT_SYS_CTRL_BASE, ctrl & ~0xf00);

	/* Disable interrupts to prevent any spurious interrupts
	   from being generated. */
	FUNC7(cobalt, false);

	if (FUNC12(pci_dev, 1, 1, PCI_IRQ_MSI) < 1) {
		FUNC2("Could not enable MSI\n");
		ret = -EIO;
		goto err_release;
	}
	FUNC10(cobalt, pci_dev);

	/* Register IRQ */
	if (FUNC25(pci_dev->irq, cobalt_irq_handler, IRQF_SHARED,
			cobalt->v4l2_dev.name, (void *)cobalt)) {
		FUNC2("Failed to register irq %d\n", pci_dev->irq);
		ret = -EIO;
		goto err_msi;
	}

	FUNC11(cobalt);
	return 0;

err_msi:
	FUNC14(pci_dev);

err_release:
	FUNC4(cobalt, pci_dev);
	FUNC19(pci_dev);

err_disable:
	FUNC13(cobalt->pci_dev);
	return ret;
}