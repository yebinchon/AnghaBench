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

/* Variables and functions */
 scalar_t__ SSBI_REG_ADDR_IRQ_M_STATUS1 ; 
 int FUNC0 (struct pm_irq_chip*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct pm_irq_chip *chip, int master)
{
	unsigned int blockbits;
	int block_number, i, ret = 0;

	ret = FUNC2(chip->regmap, SSBI_REG_ADDR_IRQ_M_STATUS1 + master,
			  &blockbits);
	if (ret) {
		FUNC1("Failed to read master %d ret=%d\n", master, ret);
		return ret;
	}
	if (!blockbits) {
		FUNC1("master bit set in root but no blocks: %d", master);
		return 0;
	}

	for (i = 0; i < 8; i++)
		if (blockbits & (1 << i)) {
			block_number = master * 8 + i;	/* block # */
			ret |= FUNC0(chip, block_number);
		}
	return ret;
}