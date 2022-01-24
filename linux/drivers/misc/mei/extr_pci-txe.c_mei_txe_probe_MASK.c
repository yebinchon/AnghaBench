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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct mei_txe_hw {int /*<<< orphan*/  mem_addr; } ;
struct mei_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BRIDGE_BAR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DPM_FLAG_NEVER_SKIP ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  MEI_TXI_RPM_TIMEOUT ; 
 int /*<<< orphan*/  SEC_BAR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mei_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_device*) ; 
 int FUNC8 (struct mei_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct mei_device*) ; 
 struct mei_device* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/ * mei_txe_irq_quick_handler ; 
 int /*<<< orphan*/  mei_txe_irq_thread_handler ; 
 int /*<<< orphan*/  FUNC12 (struct mei_device*) ; 
 scalar_t__ FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,struct mei_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int FUNC18 (struct pci_dev*) ; 
 int FUNC19 (struct pci_dev*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mei_device*) ; 
 struct mei_txe_hw* FUNC25 (struct mei_device*) ; 

__attribute__((used)) static int FUNC26(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct mei_device *dev;
	struct mei_txe_hw *hw;
	const int mask = FUNC0(SEC_BAR) | FUNC0(BRIDGE_BAR);
	int err;

	/* enable pci dev */
	err = FUNC18(pdev);
	if (err) {
		FUNC2(&pdev->dev, "failed to enable pci device.\n");
		goto end;
	}
	/* set PCI host mastering  */
	FUNC17(pdev);
	/* pci request regions and mapping IO device memory for mei driver */
	err = FUNC19(pdev, mask, KBUILD_MODNAME);
	if (err) {
		FUNC2(&pdev->dev, "failed to get pci regions.\n");
		goto end;
	}

	err = FUNC15(pdev, FUNC1(36));
	if (err) {
		err = FUNC15(pdev, FUNC1(32));
		if (err) {
			FUNC2(&pdev->dev, "No suitable DMA available.\n");
			goto end;
		}
	}

	/* allocates and initializes the mei dev structure */
	dev = FUNC11(pdev);
	if (!dev) {
		err = -ENOMEM;
		goto end;
	}
	hw = FUNC25(dev);
	hw->mem_addr = FUNC20(pdev);

	FUNC14(pdev);

	/* clear spurious interrupts */
	FUNC6(dev);

	/* request and enable interrupt  */
	if (FUNC13(pdev))
		err = FUNC24(pdev->irq,
			NULL,
			mei_txe_irq_thread_handler,
			IRQF_ONESHOT, KBUILD_MODNAME, dev);
	else
		err = FUNC24(pdev->irq,
			mei_txe_irq_quick_handler,
			mei_txe_irq_thread_handler,
			IRQF_SHARED, KBUILD_MODNAME, dev);
	if (err) {
		FUNC2(&pdev->dev, "mei: request_threaded_irq failure. irq = %d\n",
			pdev->irq);
		goto end;
	}

	if (FUNC9(dev)) {
		FUNC2(&pdev->dev, "init hw failure.\n");
		err = -ENODEV;
		goto release_irq;
	}

	FUNC22(&pdev->dev, MEI_TXI_RPM_TIMEOUT);
	FUNC23(&pdev->dev);

	err = FUNC8(dev, &pdev->dev);
	if (err)
		goto stop;

	FUNC16(pdev, dev);

	/*
	 * MEI requires to resume from runtime suspend mode
	 * in order to perform link reset flow upon system suspend.
	 */
	FUNC3(&pdev->dev, DPM_FLAG_NEVER_SKIP);

	/*
	 * TXE maps runtime suspend/resume to own power gating states,
	 * hence we need to go around native PCI runtime service which
	 * eventually brings the device into D3cold/hot state.
	 * But the TXE device cannot wake up from D3 unlike from own
	 * power gating. To get around PCI device native runtime pm,
	 * TXE uses runtime pm domain handlers which take precedence.
	 */
	FUNC12(dev);

	FUNC21(&pdev->dev);

	return 0;

stop:
	FUNC10(dev);
release_irq:
	FUNC5(dev);
	FUNC7(dev);
	FUNC4(pdev->irq, dev);
end:
	FUNC2(&pdev->dev, "initialization failed.\n");
	return err;
}