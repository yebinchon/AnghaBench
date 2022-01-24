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
struct sdio_func {int num; int /*<<< orphan*/  card; int /*<<< orphan*/ * irq_handler; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SDIO_CCCR_IENx ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct sdio_func *func)
{
	int ret;
	unsigned char reg;

	if (!func)
		return -EINVAL;

	FUNC1("SDIO: Disabling IRQ for %s...\n", FUNC3(func));

	if (func->irq_handler) {
		func->irq_handler = NULL;
		FUNC2(func->card);
		FUNC4(func->card);
	}

	ret = FUNC0(func->card, 0, 0, SDIO_CCCR_IENx, 0, &reg);
	if (ret)
		return ret;

	reg &= ~(1 << func->num);

	/* Disable master interrupt with the last function interrupt */
	if (!(reg & 0xFE))
		reg = 0;

	ret = FUNC0(func->card, 1, 0, SDIO_CCCR_IENx, reg, NULL);
	if (ret)
		return ret;

	return 0;
}