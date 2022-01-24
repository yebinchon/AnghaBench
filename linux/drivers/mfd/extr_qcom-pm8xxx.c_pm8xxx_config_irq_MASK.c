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
struct pm_irq_chip {int /*<<< orphan*/  pm_irq_lock; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int PM_IRQF_WRITE ; 
 int /*<<< orphan*/  SSBI_REG_ADDR_IRQ_BLK_SEL ; 
 int /*<<< orphan*/  SSBI_REG_ADDR_IRQ_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct pm_irq_chip *chip, unsigned int bp, unsigned int cp)
{
	int	rc;

	FUNC2(&chip->pm_irq_lock);
	rc = FUNC1(chip->regmap, SSBI_REG_ADDR_IRQ_BLK_SEL, bp);
	if (rc) {
		FUNC0("Failed Selecting Block %d rc=%d\n", bp, rc);
		goto bail;
	}

	cp |= PM_IRQF_WRITE;
	rc = FUNC1(chip->regmap, SSBI_REG_ADDR_IRQ_CONFIG, cp);
	if (rc)
		FUNC0("Failed Configuring IRQ rc=%d\n", rc);
bail:
	FUNC3(&chip->pm_irq_lock);
	return rc;
}