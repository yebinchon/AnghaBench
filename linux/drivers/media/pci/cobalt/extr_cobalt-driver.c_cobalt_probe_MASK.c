#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  notify; } ;
struct cobalt {int instance; TYPE_1__ v4l2_dev; int /*<<< orphan*/ * irq_work_queues; struct pci_dev* pci_dev; int /*<<< orphan*/  hdl_info; int /*<<< orphan*/  irq_work_queue; } ;

/* Variables and functions */
 int COBALT_SYSSTAT_HSMA_PRSNTN_MSK ; 
 int /*<<< orphan*/  COBALT_SYS_CTRL_HSMA_TX_ENABLE_BIT ; 
 int /*<<< orphan*/  COBALT_SYS_STAT_BASE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct cobalt*) ; 
 int /*<<< orphan*/  FUNC4 (struct cobalt*,struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct cobalt*) ; 
 int /*<<< orphan*/  FUNC6 (struct cobalt*) ; 
 int FUNC7 (struct cobalt*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  cobalt_instance ; 
 int /*<<< orphan*/  cobalt_irq_work_handler ; 
 int FUNC9 (struct cobalt*) ; 
 int /*<<< orphan*/  cobalt_notify ; 
 int /*<<< orphan*/  FUNC10 (struct cobalt*,struct pci_dev*) ; 
 int FUNC11 (struct cobalt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cobalt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cobalt*,int) ; 
 int FUNC14 (struct cobalt*,struct pci_dev*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  FUNC15 (struct cobalt*) ; 
 int FUNC16 (struct cobalt*) ; 
 int FUNC17 (struct cobalt*) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  interrupt_service_routine ; 
 int /*<<< orphan*/  FUNC20 (struct cobalt*) ; 
 struct cobalt* FUNC21 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC29(struct pci_dev *pci_dev,
				  const struct pci_device_id *pci_id)
{
	struct cobalt *cobalt;
	int retval = 0;
	int i;

	/* FIXME - module parameter arrays constrain max instances */
	i = FUNC1(&cobalt_instance) - 1;

	cobalt = FUNC21(sizeof(struct cobalt), GFP_KERNEL);
	if (cobalt == NULL)
		return -ENOMEM;
	cobalt->pci_dev = pci_dev;
	cobalt->instance = i;

	retval = FUNC27(&pci_dev->dev, &cobalt->v4l2_dev);
	if (retval) {
		FUNC24("cobalt: v4l2_device_register of card %d failed\n",
				cobalt->instance);
		FUNC20(cobalt);
		return retval;
	}
	FUNC25(cobalt->v4l2_dev.name, sizeof(cobalt->v4l2_dev.name),
		 "cobalt-%d", cobalt->instance);
	cobalt->v4l2_dev.notify = cobalt_notify;
	FUNC8("Initializing card %d\n", cobalt->instance);

	cobalt->irq_work_queues =
		FUNC18(cobalt->v4l2_dev.name);
	if (cobalt->irq_work_queues == NULL) {
		FUNC2("Could not create workqueue\n");
		retval = -ENOMEM;
		goto err;
	}

	FUNC0(&cobalt->irq_work_queue, cobalt_irq_work_handler);

	/* PCI Device Setup */
	retval = FUNC14(cobalt, pci_dev, pci_id);
	if (retval != 0)
		goto err_wq;

	/* Show HDL version info */
	if (FUNC5(cobalt))
		FUNC8("Not able to read the HDL info\n");
	else
		FUNC8("%s", cobalt->hdl_info);

	retval = FUNC7(cobalt);
	if (retval)
		goto err_pci;

	FUNC15(cobalt);

	retval = FUNC17(cobalt);
	if (retval)
		goto err_i2c;

	if (!(FUNC11(cobalt, COBALT_SYS_STAT_BASE) &
			COBALT_SYSSTAT_HSMA_PRSNTN_MSK)) {
		retval = FUNC16(cobalt);
		if (retval)
			goto err_i2c;
	}

	retval = FUNC9(cobalt);
	if (retval) {
		FUNC2("Error %d registering device nodes\n", retval);
		goto err_i2c;
	}
	FUNC13(cobalt, true);
	FUNC26(&cobalt->v4l2_dev, 0, core,
					interrupt_service_routine, 0, NULL);

	FUNC8("Initialized cobalt card\n");

	FUNC3(cobalt);

	return 0;

err_i2c:
	FUNC6(cobalt);
	FUNC12(cobalt, COBALT_SYS_CTRL_HSMA_TX_ENABLE_BIT, 0);
err_pci:
	FUNC4(cobalt, pci_dev);
	FUNC10(cobalt, pci_dev);
	FUNC23(cobalt->pci_dev);
	FUNC22(cobalt->pci_dev);
err_wq:
	FUNC19(cobalt->irq_work_queues);
err:
	FUNC2("error %d on initialization\n", retval);

	FUNC28(&cobalt->v4l2_dev);
	FUNC20(cobalt);
	return retval;
}