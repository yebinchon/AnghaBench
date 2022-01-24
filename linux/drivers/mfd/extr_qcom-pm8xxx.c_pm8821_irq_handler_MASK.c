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
struct pm_irq_chip {int /*<<< orphan*/  regmap; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int,int) ; 
 int /*<<< orphan*/  PM8821_SSBI_REG_ADDR_IRQ_MASTER0 ; 
 int /*<<< orphan*/  PM8821_SSBI_REG_ADDR_IRQ_MASTER1 ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip*,struct irq_desc*) ; 
 struct irq_chip* FUNC4 (struct irq_desc*) ; 
 struct pm_irq_chip* FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct pm_irq_chip*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC9(struct irq_desc *desc)
{
	struct pm_irq_chip *chip = FUNC5(desc);
	struct irq_chip *irq_chip = FUNC4(desc);
	unsigned int master;
	int ret;

	FUNC2(irq_chip, desc);
	ret = FUNC8(chip->regmap,
			  PM8821_SSBI_REG_ADDR_IRQ_MASTER0, &master);
	if (ret) {
		FUNC7("Failed to read master 0 ret=%d\n", ret);
		goto done;
	}

	/* bits 1 through 7 marks the first 7 blocks in master 0 */
	if (master & FUNC1(7, 1))
		FUNC6(chip, 0, master);

	/* bit 0 marks if master 1 contains any bits */
	if (!(master & FUNC0(0)))
		goto done;

	ret = FUNC8(chip->regmap,
			  PM8821_SSBI_REG_ADDR_IRQ_MASTER1, &master);
	if (ret) {
		FUNC7("Failed to read master 1 ret=%d\n", ret);
		goto done;
	}

	FUNC6(chip, 1, master);

done:
	FUNC3(irq_chip, desc);
}