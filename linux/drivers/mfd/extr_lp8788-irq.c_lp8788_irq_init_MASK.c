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
struct lp8788_irq_data {int /*<<< orphan*/  irq_lock; scalar_t__ domain; struct lp8788* lp; } ;
struct lp8788 {int irq; TYPE_1__* dev; scalar_t__ irqdm; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  LP8788_INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 struct lp8788_irq_data* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct lp8788_irq_data*) ; 
 int /*<<< orphan*/  lp8788_domain_ops ; 
 int /*<<< orphan*/  lp8788_irq_handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct lp8788_irq_data*) ; 

int FUNC6(struct lp8788 *lp, int irq)
{
	struct lp8788_irq_data *irqd;
	int ret;

	if (irq <= 0) {
		FUNC1(lp->dev, "invalid irq number: %d\n", irq);
		return 0;
	}

	irqd = FUNC2(lp->dev, sizeof(*irqd), GFP_KERNEL);
	if (!irqd)
		return -ENOMEM;

	irqd->lp = lp;
	irqd->domain = FUNC3(lp->dev->of_node, LP8788_INT_MAX,
					&lp8788_domain_ops, irqd);
	if (!irqd->domain) {
		FUNC0(lp->dev, "failed to add irq domain err\n");
		return -EINVAL;
	}

	lp->irqdm = irqd->domain;
	FUNC4(&irqd->irq_lock);

	ret = FUNC5(irq, NULL, lp8788_irq_handler,
				IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				"lp8788-irq", irqd);
	if (ret) {
		FUNC0(lp->dev, "failed to create a thread for IRQ_N\n");
		return ret;
	}

	lp->irq = irq;

	return 0;
}