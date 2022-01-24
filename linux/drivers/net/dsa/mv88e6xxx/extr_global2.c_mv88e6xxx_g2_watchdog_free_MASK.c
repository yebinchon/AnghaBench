#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mv88e6xxx_chip {int /*<<< orphan*/  watchdog_irq; TYPE_3__* info; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {TYPE_1__* watchdog_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* irq_free ) (struct mv88e6xxx_chip*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static void FUNC5(struct mv88e6xxx_chip *chip)
{
	FUNC2(chip);
	if (chip->info->ops->watchdog_ops->irq_free)
		chip->info->ops->watchdog_ops->irq_free(chip);
	FUNC3(chip);

	FUNC0(chip->watchdog_irq, chip);
	FUNC1(chip->watchdog_irq);
}