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
struct v4l2_ctrl_handler {int error; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  revision; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct cx23885_dev {int board; TYPE_1__ v4l2_dev; int /*<<< orphan*/  name; int /*<<< orphan*/  pci_lat; int /*<<< orphan*/  pci_rev; struct pci_dev* pci; struct v4l2_ctrl_handler ctrl_handler; int /*<<< orphan*/  need_dma_reset; } ;

/* Variables and functions */
#define  CX23885_BOARD_NETUP_DUAL_DVBS2_CI 129 
#define  CX23885_BOARD_NETUP_DUAL_DVB_T_C_CI_RF 128 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int PCI_MSK_GPIO0 ; 
 int PCI_MSK_GPIO1 ; 
 scalar_t__ FUNC0 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  cx23885_irq ; 
 int /*<<< orphan*/  FUNC5 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct cx23885_dev*) ; 
 struct cx23885_dev* FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cx23885_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC19 (struct v4l2_ctrl_handler*,int) ; 
 int FUNC20 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC22(struct pci_dev *pci_dev,
			   const struct pci_device_id *pci_id)
{
	struct cx23885_dev *dev;
	struct v4l2_ctrl_handler *hdl;
	int err;

	dev = FUNC8(sizeof(*dev), GFP_KERNEL);
	if (NULL == dev)
		return -ENOMEM;

	dev->need_dma_reset = FUNC2();

	err = FUNC20(&pci_dev->dev, &dev->v4l2_dev);
	if (err < 0)
		goto fail_free;

	hdl = &dev->ctrl_handler;
	FUNC19(hdl, 6);
	if (hdl->error) {
		err = hdl->error;
		goto fail_ctrl;
	}
	dev->v4l2_dev.ctrl_handler = hdl;

	/* Prepare to handle notifications from subdevices */
	FUNC6(dev);

	/* pci init */
	dev->pci = pci_dev;
	if (FUNC9(pci_dev)) {
		err = -EIO;
		goto fail_ctrl;
	}

	if (FUNC0(dev) < 0) {
		err = -EINVAL;
		goto fail_ctrl;
	}

	/* print pci info */
	dev->pci_rev = pci_dev->revision;
	FUNC11(pci_dev, PCI_LATENCY_TIMER,  &dev->pci_lat);
	FUNC16("%s/0: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\n",
	       dev->name,
	       FUNC10(pci_dev), dev->pci_rev, pci_dev->irq,
	       dev->pci_lat,
		(unsigned long long)FUNC12(pci_dev, 0));

	FUNC14(pci_dev);
	err = FUNC13(pci_dev, 0xffffffff);
	if (err) {
		FUNC15("%s/0: Oops: no 32bit PCI DMA ???\n", dev->name);
		goto fail_ctrl;
	}

	err = FUNC17(pci_dev->irq, cx23885_irq,
			  IRQF_SHARED, dev->name, dev);
	if (err < 0) {
		FUNC15("%s: can't get IRQ %d\n",
		       dev->name, pci_dev->irq);
		goto fail_irq;
	}

	switch (dev->board) {
	case CX23885_BOARD_NETUP_DUAL_DVBS2_CI:
		FUNC5(dev, PCI_MSK_GPIO1 | PCI_MSK_GPIO0);
		break;
	case CX23885_BOARD_NETUP_DUAL_DVB_T_C_CI_RF:
		FUNC5(dev, PCI_MSK_GPIO0);
		break;
	}

	/*
	 * The CX2388[58] IR controller can start firing interrupts when
	 * enabled, so these have to take place after the cx23885_irq() handler
	 * is hooked up by the call to request_irq() above.
	 */
	FUNC4(dev);
	FUNC3(dev);

	return 0;

fail_irq:
	FUNC1(dev);
fail_ctrl:
	FUNC18(hdl);
	FUNC21(&dev->v4l2_dev);
fail_free:
	FUNC7(dev);
	return err;
}