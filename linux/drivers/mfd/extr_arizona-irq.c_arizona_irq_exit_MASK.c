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
struct arizona {int /*<<< orphan*/  irq; int /*<<< orphan*/  virq; int /*<<< orphan*/  aod_irq_chip; int /*<<< orphan*/  irq_chip; scalar_t__ ctrlif_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_AOD_IRQ_INDEX ; 
 int /*<<< orphan*/  ARIZONA_IRQ_BOOT_DONE ; 
 int /*<<< orphan*/  ARIZONA_IRQ_CTRLIF_ERR ; 
 int /*<<< orphan*/  ARIZONA_MAIN_IRQ_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct arizona*,int /*<<< orphan*/ ,struct arizona*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct arizona*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC6(struct arizona *arizona)
{
	unsigned int virq;

	if (arizona->ctrlif_error)
		FUNC0(arizona, ARIZONA_IRQ_CTRLIF_ERR, arizona);
	FUNC0(arizona, ARIZONA_IRQ_BOOT_DONE, arizona);

	virq = FUNC4(arizona->virq, ARIZONA_MAIN_IRQ_INDEX);
	FUNC5(virq, arizona->irq_chip);
	FUNC2(virq);

	virq = FUNC4(arizona->virq, ARIZONA_AOD_IRQ_INDEX);
	FUNC5(virq, arizona->aod_irq_chip);
	FUNC2(virq);

	FUNC3(arizona->virq);

	FUNC1(arizona->irq, arizona);

	return 0;
}