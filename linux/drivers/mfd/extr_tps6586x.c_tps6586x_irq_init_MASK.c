#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  tmp ;
struct tps6586x {int irq; int* mask_reg; TYPE_1__* dev; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  irq_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  TPS6586X_INT_ACK1 ; 
 scalar_t__ TPS6586X_INT_MASK1 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,struct tps6586x*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct tps6586x*) ; 
 int /*<<< orphan*/  tps6586x_domain_ops ; 
 int /*<<< orphan*/  tps6586x_irq ; 
 int /*<<< orphan*/  tps6586x_irqs ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC9(struct tps6586x *tps6586x, int irq,
				       int irq_base)
{
	int i, ret;
	u8 tmp[4];
	int new_irq_base;
	int irq_num = FUNC0(tps6586x_irqs);

	tps6586x->irq = irq;

	FUNC5(&tps6586x->irq_lock);
	for (i = 0; i < 5; i++) {
		tps6586x->mask_reg[i] = 0xff;
		FUNC8(tps6586x->dev, TPS6586X_INT_MASK1 + i, 0xff);
	}

	FUNC7(tps6586x->dev, TPS6586X_INT_ACK1, sizeof(tmp), tmp);

	if  (irq_base > 0) {
		new_irq_base = FUNC3(irq_base, 0, irq_num, -1);
		if (new_irq_base < 0) {
			FUNC1(tps6586x->dev,
				"Failed to alloc IRQs: %d\n", new_irq_base);
			return new_irq_base;
		}
	} else {
		new_irq_base = 0;
	}

	tps6586x->irq_domain = FUNC4(tps6586x->dev->of_node,
				irq_num, new_irq_base, &tps6586x_domain_ops,
				tps6586x);
	if (!tps6586x->irq_domain) {
		FUNC1(tps6586x->dev, "Failed to create IRQ domain\n");
		return -ENOMEM;
	}
	ret = FUNC6(irq, NULL, tps6586x_irq, IRQF_ONESHOT,
				   "tps6586x", tps6586x);

	if (!ret)
		FUNC2(tps6586x->dev, 1);

	return ret;
}