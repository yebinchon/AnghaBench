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
struct rc5t583 {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  intc_inten_reg; int /*<<< orphan*/ * irq_en_reg; int /*<<< orphan*/ * gpedge_reg; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RC5T583_INTC_INTEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * gpedge_add ; 
 struct rc5t583* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/ * irq_en_add ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct irq_data *irq_data)
{
	struct rc5t583 *rc5t583 = FUNC2(irq_data);
	int i;
	int ret;

	for (i = 0; i < FUNC0(rc5t583->gpedge_reg); i++) {
		ret = FUNC4(rc5t583->dev, gpedge_add[i],
				rc5t583->gpedge_reg[i]);
		if (ret < 0)
			FUNC1(rc5t583->dev,
				"Error in writing reg 0x%02x error: %d\n",
				gpedge_add[i], ret);
	}

	for (i = 0; i < FUNC0(rc5t583->irq_en_reg); i++) {
		ret = FUNC4(rc5t583->dev, irq_en_add[i],
					rc5t583->irq_en_reg[i]);
		if (ret < 0)
			FUNC1(rc5t583->dev,
				"Error in writing reg 0x%02x error: %d\n",
				irq_en_add[i], ret);
	}

	ret = FUNC4(rc5t583->dev, RC5T583_INTC_INTEN,
				rc5t583->intc_inten_reg);
	if (ret < 0)
		FUNC1(rc5t583->dev,
			"Error in writing reg 0x%02x error: %d\n",
			RC5T583_INTC_INTEN, ret);

	FUNC3(&rc5t583->irq_lock);
}