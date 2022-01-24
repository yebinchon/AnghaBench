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
struct mv88e6xxx_chip {int /*<<< orphan*/  irq_poll_work; int /*<<< orphan*/  kworker; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  mv88e6xxx_irq_poll ; 

__attribute__((used)) static int FUNC8(struct mv88e6xxx_chip *chip)
{
	int err;

	err = FUNC7(chip);
	if (err)
		return err;

	FUNC4(&chip->irq_poll_work,
				  mv88e6xxx_irq_poll);

	chip->kworker = FUNC3(0, "%s", FUNC2(chip->dev));
	if (FUNC0(chip->kworker))
		return FUNC1(chip->kworker);

	FUNC5(chip->kworker, &chip->irq_poll_work,
				   FUNC6(100));

	return 0;
}