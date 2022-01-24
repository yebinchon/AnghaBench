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
struct mv88e6xxx_chip {int /*<<< orphan*/  kworker; int /*<<< orphan*/  irq_poll_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static void FUNC5(struct mv88e6xxx_chip *chip)
{
	FUNC0(&chip->irq_poll_work);
	FUNC1(chip->kworker);

	FUNC3(chip);
	FUNC2(chip);
	FUNC4(chip);
}