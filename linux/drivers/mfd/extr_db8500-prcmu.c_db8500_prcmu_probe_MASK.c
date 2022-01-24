#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_MBOX_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DB8500_PRCMU_FW_VERSION_OFFSET ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ESRAM0_DEEP_SLEEP_STATE_RET ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_NO_SUSPEND ; 
 int /*<<< orphan*/  PRCM_ARM_IT1_CLR ; 
 int /*<<< orphan*/  common_prcmu_devs ; 
 int /*<<< orphan*/  db8500_irq_domain ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  db8500_prcmu_devs ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 void* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 void* prcmu_base ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prcmu_irq_handler ; 
 int /*<<< orphan*/  prcmu_irq_thread_fn ; 
 int FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct resource*) ; 
 void* tcdm_base ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	int irq = 0, err = 0;
	struct resource *res;

	res = FUNC11(pdev, IORESOURCE_MEM, "prcmu");
	if (!res) {
		FUNC4(&pdev->dev, "no prcmu memory region provided\n");
		return -EINVAL;
	}
	prcmu_base = FUNC5(&pdev->dev, res->start, FUNC16(res));
	if (!prcmu_base) {
		FUNC4(&pdev->dev,
			"failed to ioremap prcmu register memory\n");
		return -ENOMEM;
	}
	FUNC6();
	FUNC3(pdev, DB8500_PRCMU_FW_VERSION_OFFSET);
	res = FUNC11(pdev, IORESOURCE_MEM, "prcmu-tcdm");
	if (!res) {
		FUNC4(&pdev->dev, "no prcmu tcdm region provided\n");
		return -EINVAL;
	}
	tcdm_base = FUNC5(&pdev->dev, res->start,
			FUNC16(res));
	if (!tcdm_base) {
		FUNC4(&pdev->dev,
			"failed to ioremap prcmu-tcdm register memory\n");
		return -ENOMEM;
	}

	/* Clean up the mailbox interrupts after pre-kernel code. */
	FUNC17(ALL_MBOX_BITS, PRCM_ARM_IT1_CLR);

	irq = FUNC10(pdev, 0);
	if (irq <= 0)
		return irq;

	err = FUNC15(irq, prcmu_irq_handler,
	        prcmu_irq_thread_fn, IRQF_NO_SUSPEND, "prcmu", NULL);
	if (err < 0) {
		FUNC12("prcmu: Failed to allocate IRQ_DB8500_PRCMU1.\n");
		return err;
	}

	FUNC1(np);

	FUNC14(ESRAM0_DEEP_SLEEP_STATE_RET);

	err = FUNC7(&pdev->dev, 0, common_prcmu_devs,
			      FUNC0(common_prcmu_devs), NULL, 0, db8500_irq_domain);
	if (err) {
		FUNC12("prcmu: Failed to add subdevices\n");
		return err;
	}

	/* TODO: Remove restriction when clk definitions are available. */
	if (!FUNC9("st-ericsson,u8540")) {
		err = FUNC7(&pdev->dev, 0, db8500_prcmu_devs,
				      FUNC0(db8500_prcmu_devs), NULL, 0,
				      db8500_irq_domain);
		if (err) {
			FUNC8(&pdev->dev);
			FUNC12("prcmu: Failed to add subdevices\n");
			return err;
		}
	}

	err = FUNC2(&pdev->dev);
	if (err) {
		FUNC8(&pdev->dev);
		FUNC12("prcmu: Failed to add ab8500 subdevice\n");
		return err;
	}

	FUNC13("DB8500 PRCMU initialized\n");
	return err;
}