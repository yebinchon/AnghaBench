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
struct pm_irq_chip {int num_masters; int /*<<< orphan*/  regmap; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSBI_REG_ADDR_IRQ_ROOT ; 
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 struct irq_chip* FUNC2 (struct irq_desc*) ; 
 struct pm_irq_chip* FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct pm_irq_chip*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC7(struct irq_desc *desc)
{
	struct pm_irq_chip *chip = FUNC3(desc);
	struct irq_chip *irq_chip = FUNC2(desc);
	unsigned int root;
	int	i, ret, masters = 0;

	FUNC0(irq_chip, desc);

	ret = FUNC6(chip->regmap, SSBI_REG_ADDR_IRQ_ROOT, &root);
	if (ret) {
		FUNC5("Can't read root status ret=%d\n", ret);
		return;
	}

	/* on pm8xxx series masters start from bit 1 of the root */
	masters = root >> 1;

	/* Read allowed masters for blocks. */
	for (i = 0; i < chip->num_masters; i++)
		if (masters & (1 << i))
			FUNC4(chip, i);

	FUNC1(irq_chip, desc);
}