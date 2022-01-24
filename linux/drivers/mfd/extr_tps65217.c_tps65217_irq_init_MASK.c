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
struct tps65217 {int irq; TYPE_1__* dev; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  irq_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  TPS65217_INT_MASK ; 
 int /*<<< orphan*/  TPS65217_NUM_IRQ ; 
 int /*<<< orphan*/  TPS65217_PROTECT_NONE ; 
 int /*<<< orphan*/  TPS65217_REG_INT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct tps65217*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tps65217*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tps65217_irq_domain_ops ; 
 int /*<<< orphan*/  tps65217_irq_thread ; 
 int /*<<< orphan*/  FUNC5 (struct tps65217*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tps65217 *tps, int irq)
{
	int ret;

	FUNC4(&tps->irq_lock);
	tps->irq = irq;

	/* Mask all interrupt sources */
	tps->irq_mask = TPS65217_INT_MASK;
	FUNC5(tps, TPS65217_REG_INT, TPS65217_INT_MASK,
			  TPS65217_INT_MASK, TPS65217_PROTECT_NONE);

	tps->irq_domain = FUNC3(tps->dev->of_node,
		TPS65217_NUM_IRQ, &tps65217_irq_domain_ops, tps);
	if (!tps->irq_domain) {
		FUNC0(tps->dev, "Could not create IRQ domain\n");
		return -ENOMEM;
	}

	ret = FUNC1(tps->dev, irq, NULL,
					tps65217_irq_thread, IRQF_ONESHOT,
					"tps65217-irq", tps);
	if (ret) {
		FUNC0(tps->dev, "Failed to request IRQ %d: %d\n",
			irq, ret);
		return ret;
	}

	FUNC2(irq);

	return 0;
}