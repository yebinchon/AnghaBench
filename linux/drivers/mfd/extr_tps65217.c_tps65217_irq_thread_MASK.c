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
struct tps65217 {int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int TPS65217_NUM_IRQ ; 
 int /*<<< orphan*/  TPS65217_REG_INT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct tps65217*,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct tps65217 *tps = data;
	unsigned int status;
	bool handled = false;
	int i;
	int ret;

	ret = FUNC4(tps, TPS65217_REG_INT, &status);
	if (ret < 0) {
		FUNC1(tps->dev, "Failed to read IRQ status: %d\n",
			ret);
		return IRQ_NONE;
	}

	for (i = 0; i < TPS65217_NUM_IRQ; i++) {
		if (status & FUNC0(i)) {
			FUNC2(FUNC3(tps->irq_domain, i));
			handled = true;
		}
	}

	if (handled)
		return IRQ_HANDLED;

	return IRQ_NONE;
}