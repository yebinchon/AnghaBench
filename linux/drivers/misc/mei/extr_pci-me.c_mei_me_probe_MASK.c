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
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct mei_me_hw {scalar_t__ d0i3_supported; int /*<<< orphan*/  mem_addr; } ;
struct mei_device {int dummy; } ;
struct mei_cfg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DPM_FLAG_NEVER_SKIP ; 
 int ENODEV ; 
 int ENOMEM ; 
 unsigned int IRQF_ONESHOT ; 
 unsigned int IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  MEI_ME_RPM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct mei_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mei_device*) ; 
 struct mei_device* FUNC10 (struct pci_dev*,struct mei_cfg const*) ; 
 struct mei_cfg* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mei_me_irq_quick_handler ; 
 int /*<<< orphan*/  mei_me_irq_thread_handler ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct mei_cfg const*) ; 
 int /*<<< orphan*/  FUNC13 (struct mei_device*) ; 
 scalar_t__ FUNC14 (struct mei_device*) ; 
 int FUNC15 (struct mei_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct mei_device*) ; 
 scalar_t__ FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,struct mei_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int FUNC22 (struct pci_dev*) ; 
 int FUNC23 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct mei_device*) ; 
 struct mei_me_hw* FUNC30 (struct mei_device*) ; 

__attribute__((used)) static int FUNC31(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	const struct mei_cfg *cfg;
	struct mei_device *dev;
	struct mei_me_hw *hw;
	unsigned int irqflags;
	int err;

	cfg = FUNC11(ent->driver_data);
	if (!cfg)
		return -ENODEV;

	if (!FUNC12(pdev, cfg))
		return -ENODEV;

	/* enable pci dev */
	err = FUNC22(pdev);
	if (err) {
		FUNC3(&pdev->dev, "failed to enable pci device.\n");
		goto end;
	}
	/* set PCI host mastering  */
	FUNC21(pdev);
	/* pci request regions and mapping IO device memory for mei driver */
	err = FUNC23(pdev, FUNC0(0), KBUILD_MODNAME);
	if (err) {
		FUNC3(&pdev->dev, "failed to get pci regions.\n");
		goto end;
	}

	if (FUNC6(&pdev->dev, FUNC1(64)) ||
	    FUNC5(&pdev->dev, FUNC1(64))) {

		err = FUNC6(&pdev->dev, FUNC1(32));
		if (err)
			err = FUNC5(&pdev->dev,
						    FUNC1(32));
	}
	if (err) {
		FUNC3(&pdev->dev, "No usable DMA configuration, aborting\n");
		goto end;
	}

	/* allocates and initializes the mei dev structure */
	dev = FUNC10(pdev, cfg);
	if (!dev) {
		err = -ENOMEM;
		goto end;
	}
	hw = FUNC30(dev);
	hw->mem_addr = FUNC24(pdev)[0];

	FUNC19(pdev);

	 /* request and enable interrupt */
	irqflags = FUNC18(pdev) ? IRQF_ONESHOT : IRQF_SHARED;

	err = FUNC29(pdev->irq,
			mei_me_irq_quick_handler,
			mei_me_irq_thread_handler,
			irqflags, KBUILD_MODNAME, dev);
	if (err) {
		FUNC3(&pdev->dev, "request_threaded_irq failure. irq = %d\n",
		       pdev->irq);
		goto end;
	}

	if (FUNC16(dev)) {
		FUNC3(&pdev->dev, "init hw failure.\n");
		err = -ENODEV;
		goto release_irq;
	}

	FUNC27(&pdev->dev, MEI_ME_RPM_TIMEOUT);
	FUNC28(&pdev->dev);

	err = FUNC15(dev, &pdev->dev);
	if (err)
		goto stop;

	FUNC20(pdev, dev);

	/*
	 * MEI requires to resume from runtime suspend mode
	 * in order to perform link reset flow upon system suspend.
	 */
	FUNC4(&pdev->dev, DPM_FLAG_NEVER_SKIP);

	/*
	 * ME maps runtime suspend/resume to D0i states,
	 * hence we need to go around native PCI runtime service which
	 * eventually brings the device into D3cold/hot state,
	 * but the mei device cannot wake up from D3 unlike from D0i3.
	 * To get around the PCI device native runtime pm,
	 * ME uses runtime pm domain handlers which take precedence
	 * over the driver's pm handlers.
	 */
	FUNC13(dev);

	if (FUNC14(dev)) {
		FUNC26(&pdev->dev);
		if (hw->d0i3_supported)
			FUNC25(&pdev->dev);
	}

	FUNC2(&pdev->dev, "initialization successful.\n");

	return 0;

stop:
	FUNC17(dev);
release_irq:
	FUNC8(dev);
	FUNC9(dev);
	FUNC7(pdev->irq, dev);
end:
	FUNC3(&pdev->dev, "initialization failed.\n");
	return err;
}