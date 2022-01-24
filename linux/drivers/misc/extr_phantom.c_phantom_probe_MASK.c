#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct phantom_device {int /*<<< orphan*/ * caddr; int /*<<< orphan*/ * iaddr; int /*<<< orphan*/ * oaddr; TYPE_1__ cdev; int /*<<< orphan*/  wait; int /*<<< orphan*/  regs_lock; int /*<<< orphan*/  open_lock; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int PHANTOM_MAX_MINORS ; 
 int PHN_IRQCTL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct phantom_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct phantom_device*) ; 
 struct phantom_device* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*) ; 
 void* FUNC15 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int FUNC18 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,struct phantom_device*) ; 
 int /*<<< orphan*/  phantom_class ; 
 int* phantom_devices ; 
 int /*<<< orphan*/  phantom_file_ops ; 
 unsigned int FUNC20 () ; 
 int /*<<< orphan*/  phantom_isr ; 
 int /*<<< orphan*/  phantom_major ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct phantom_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct pci_dev *pdev,
	const struct pci_device_id *pci_id)
{
	struct phantom_device *pht;
	unsigned int minor;
	int retval;

	retval = FUNC14(pdev);
	if (retval) {
		FUNC4(&pdev->dev, "pci_enable_device failed!\n");
		goto err;
	}

	minor = FUNC20();
	if (minor == PHANTOM_MAX_MINORS) {
		FUNC4(&pdev->dev, "too many devices found!\n");
		retval = -EIO;
		goto err_dis;
	}

	phantom_devices[minor] = 1;

	retval = FUNC18(pdev, "phantom");
	if (retval) {
		FUNC4(&pdev->dev, "pci_request_regions failed!\n");
		goto err_null;
	}

	retval = -ENOMEM;
	pht = FUNC11(sizeof(*pht), GFP_KERNEL);
	if (pht == NULL) {
		FUNC4(&pdev->dev, "unable to allocate device\n");
		goto err_reg;
	}

	pht->caddr = FUNC15(pdev, 0, 0);
	if (pht->caddr == NULL) {
		FUNC4(&pdev->dev, "can't remap conf space\n");
		goto err_fr;
	}
	pht->iaddr = FUNC15(pdev, 2, 0);
	if (pht->iaddr == NULL) {
		FUNC4(&pdev->dev, "can't remap input space\n");
		goto err_unmc;
	}
	pht->oaddr = FUNC15(pdev, 3, 0);
	if (pht->oaddr == NULL) {
		FUNC4(&pdev->dev, "can't remap output space\n");
		goto err_unmi;
	}

	FUNC12(&pht->open_lock);
	FUNC22(&pht->regs_lock);
	FUNC7(&pht->wait);
	FUNC3(&pht->cdev, &phantom_file_ops);
	pht->cdev.owner = THIS_MODULE;

	FUNC9(0, pht->caddr + PHN_IRQCTL);
	FUNC8(pht->caddr + PHN_IRQCTL); /* PCI posting */
	retval = FUNC21(pdev->irq, phantom_isr,
			IRQF_SHARED, "phantom", pht);
	if (retval) {
		FUNC4(&pdev->dev, "can't establish ISR\n");
		goto err_unmo;
	}

	retval = FUNC2(&pht->cdev, FUNC1(phantom_major, minor), 1);
	if (retval) {
		FUNC4(&pdev->dev, "chardev registration failed\n");
		goto err_irq;
	}

	if (FUNC0(FUNC5(phantom_class, &pdev->dev,
				 FUNC1(phantom_major, minor), NULL,
				 "phantom%u", minor)))
		FUNC4(&pdev->dev, "can't create device\n");

	FUNC19(pdev, pht);

	return 0;
err_irq:
	FUNC6(pdev->irq, pht);
err_unmo:
	FUNC16(pdev, pht->oaddr);
err_unmi:
	FUNC16(pdev, pht->iaddr);
err_unmc:
	FUNC16(pdev, pht->caddr);
err_fr:
	FUNC10(pht);
err_reg:
	FUNC17(pdev);
err_null:
	phantom_devices[minor] = 0;
err_dis:
	FUNC13(pdev);
err:
	return retval;
}