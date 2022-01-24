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
typedef  int /*<<< orphan*/  u8 ;
struct lp8788_irq_data {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  lp; int /*<<< orphan*/ * enabled; } ;
struct irq_data {int hwirq; } ;
typedef  enum lp8788_int_id { ____Placeholder_lp8788_int_id } lp8788_int_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct lp8788_irq_data* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct irq_data *data)
{
	struct lp8788_irq_data *irqd = FUNC3(data);
	enum lp8788_int_id irq = data->hwirq;
	u8 addr, mask, val;

	addr = FUNC0(irq);
	mask = FUNC1(irq);
	val = FUNC2(irq, irqd->enabled[irq]);

	FUNC4(irqd->lp, addr, mask, val);

	FUNC5(&irqd->irq_lock);
}