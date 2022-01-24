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
struct service_processor {int number; int /*<<< orphan*/  base_address; int /*<<< orphan*/  irq; int /*<<< orphan*/ * dev; int /*<<< orphan*/  devname; int /*<<< orphan*/  dirname; int /*<<< orphan*/  command_queue; int /*<<< orphan*/  lock; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; TYPE_1__* bus; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int number; } ;

/* Variables and functions */
 char* DRIVER_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IBMASM_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  SYSTEM_STATE_OS_UP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct service_processor*) ; 
 int FUNC6 (struct service_processor*) ; 
 int /*<<< orphan*/  FUNC7 (struct service_processor*) ; 
 int /*<<< orphan*/  FUNC8 (struct service_processor*) ; 
 int FUNC9 (struct service_processor*) ; 
 int FUNC10 (struct service_processor*) ; 
 int /*<<< orphan*/  ibmasm_interrupt_handler ; 
 int /*<<< orphan*/  FUNC11 (struct service_processor*) ; 
 int FUNC12 (struct service_processor*) ; 
 int FUNC13 (struct service_processor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct service_processor*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct service_processor*) ; 
 struct service_processor* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int FUNC22 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,void*) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct pci_dev *pdev, const struct pci_device_id *id)
{
	int result;
	struct service_processor *sp;

	if ((result = FUNC19(pdev))) {
		FUNC1(&pdev->dev, "Failed to enable PCI device\n");
		return result;
	}
	if ((result = FUNC22(pdev, DRIVER_NAME))) {
		FUNC1(&pdev->dev, "Failed to allocate PCI resources\n");
		goto error_resources;
	}
	/* vnc client won't work without bus-mastering */
	FUNC24(pdev);

	sp = FUNC17(sizeof(struct service_processor), GFP_KERNEL);
	if (sp == NULL) {
		FUNC1(&pdev->dev, "Failed to allocate memory\n");
		result = -ENOMEM;
		goto error_kmalloc;
	}

	FUNC27(&sp->lock);
	FUNC0(&sp->command_queue);

	FUNC23(pdev, (void *)sp);
	sp->dev = &pdev->dev;
	sp->number = pdev->bus->number;
	FUNC26(sp->dirname, IBMASM_NAME_SIZE, "%d", sp->number);
	FUNC26(sp->devname, IBMASM_NAME_SIZE, "%s%d", DRIVER_NAME, sp->number);

	result = FUNC6(sp);
	if (result) {
		FUNC1(sp->dev, "Failed to allocate event buffer\n");
		goto error_eventbuffer;
	}

	result = FUNC9(sp);
	if (result) {
		FUNC1(sp->dev, "Failed to allocate heartbeat command\n");
		goto error_heartbeat;
	}

	sp->irq = pdev->irq;
	sp->base_address = FUNC20(pdev, 0);
	if (!sp->base_address) {
		FUNC1(sp->dev, "Failed to ioremap pci memory\n");
		result =  -ENODEV;
		goto error_ioremap;
	}

	result = FUNC25(sp->irq, ibmasm_interrupt_handler, IRQF_SHARED, sp->devname, (void*)sp);
	if (result) {
		FUNC1(sp->dev, "Failed to register interrupt handler\n");
		goto error_request_irq;
	}

	FUNC3(sp->base_address);

	result = FUNC10(sp);
	if (result) {
		FUNC1(sp->dev, "Failed to initialize remote queue\n");
		goto error_send_message;
	}

	result = FUNC12(sp);
	if (result) {
		FUNC1(sp->dev, "Failed to send driver VPD to service processor\n");
		goto error_send_message;
	}
	result = FUNC13(sp, SYSTEM_STATE_OS_UP);
	if (result) {
		FUNC1(sp->dev, "Failed to send OS state to service processor\n");
		goto error_send_message;
	}
	FUNC14(sp);

	FUNC11(sp);

	return 0;

error_send_message:
	FUNC2(sp->base_address);
	FUNC7(sp);
	FUNC4(sp->irq, (void *)sp);
error_request_irq:
	FUNC15(sp->base_address);
error_ioremap:
	FUNC8(sp);
error_heartbeat:
	FUNC5(sp);
error_eventbuffer:
	FUNC16(sp);
error_kmalloc:
        FUNC21(pdev);
error_resources:
        FUNC18(pdev);

	return result;
}