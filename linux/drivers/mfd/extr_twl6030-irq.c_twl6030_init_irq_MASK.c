#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_9__ {char* name; int /*<<< orphan*/  irq_set_wake; int /*<<< orphan*/ * irq_set_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_7__ {int twl_irq; int /*<<< orphan*/  irq_domain; TYPE_3__ pm_nb; scalar_t__ irq_mapping_tbl; int /*<<< orphan*/  wakeirqs; TYPE_5__ irq_chip; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  REG_INT_MSK_LINE_A ; 
 int /*<<< orphan*/  REG_INT_MSK_STS_A ; 
 int /*<<< orphan*/  REG_INT_STS_A ; 
 int TWL6030_NR_IRQS ; 
 int /*<<< orphan*/  TWL_MODULE_PIH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 TYPE_1__* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_5__ dummy_irq_chip ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC6 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 TYPE_1__* twl6030_irq ; 
 int /*<<< orphan*/  twl6030_irq_domain_ops ; 
 int /*<<< orphan*/  twl6030_irq_pm_notifier ; 
 int /*<<< orphan*/  twl6030_irq_set_wake ; 
 int /*<<< orphan*/  twl6030_irq_thread ; 
 int /*<<< orphan*/  twl6030_of_match ; 
 int FUNC9 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct device *dev, int irq_num)
{
	struct			device_node *node = dev->of_node;
	int			nr_irqs;
	int			status;
	u8			mask[3];
	const struct of_device_id *of_id;

	of_id = FUNC6(twl6030_of_match, dev);
	if (!of_id || !of_id->data) {
		FUNC1(dev, "Unknown TWL device model\n");
		return -EINVAL;
	}

	nr_irqs = TWL6030_NR_IRQS;

	twl6030_irq = FUNC3(dev, sizeof(*twl6030_irq), GFP_KERNEL);
	if (!twl6030_irq)
		return -ENOMEM;

	mask[0] = 0xFF;
	mask[1] = 0xFF;
	mask[2] = 0xFF;

	/* mask all int lines */
	status = FUNC9(TWL_MODULE_PIH, &mask[0], REG_INT_MSK_LINE_A, 3);
	/* mask all int sts */
	status |= FUNC9(TWL_MODULE_PIH, &mask[0], REG_INT_MSK_STS_A, 3);
	/* clear INT_STS_A,B,C */
	status |= FUNC9(TWL_MODULE_PIH, &mask[0], REG_INT_STS_A, 3);

	if (status < 0) {
		FUNC1(dev, "I2C err writing TWL_MODULE_PIH: %d\n", status);
		return status;
	}

	/*
	 * install an irq handler for each of the modules;
	 * clone dummy irq_chip since PIH can't *do* anything
	 */
	twl6030_irq->irq_chip = dummy_irq_chip;
	twl6030_irq->irq_chip.name = "twl6030";
	twl6030_irq->irq_chip.irq_set_type = NULL;
	twl6030_irq->irq_chip.irq_set_wake = twl6030_irq_set_wake;

	twl6030_irq->pm_nb.notifier_call = twl6030_irq_pm_notifier;
	FUNC0(&twl6030_irq->wakeirqs, 0);
	twl6030_irq->irq_mapping_tbl = of_id->data;

	twl6030_irq->irq_domain =
		FUNC4(node, nr_irqs,
				      &twl6030_irq_domain_ops, twl6030_irq);
	if (!twl6030_irq->irq_domain) {
		FUNC1(dev, "Can't add irq_domain\n");
		return -ENOMEM;
	}

	FUNC2(dev, "PIH (irq %d) nested IRQs\n", irq_num);

	/* install an irq handler to demultiplex the TWL6030 interrupt */
	status = FUNC8(irq_num, NULL, twl6030_irq_thread,
				      IRQF_ONESHOT, "TWL6030-PIH", twl6030_irq);
	if (status < 0) {
		FUNC1(dev, "could not claim irq %d: %d\n", irq_num, status);
		goto fail_irq;
	}

	twl6030_irq->twl_irq = irq_num;
	FUNC7(&twl6030_irq->pm_nb);
	return 0;

fail_irq:
	FUNC5(twl6030_irq->irq_domain);
	return status;
}