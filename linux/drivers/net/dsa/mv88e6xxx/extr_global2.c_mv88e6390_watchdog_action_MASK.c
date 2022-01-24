#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct mv88e6xxx_chip {TYPE_2__* info; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* reset ) (struct mv88e6xxx_chip*) ;} ;

/* Variables and functions */
 int IRQ_HANDLED ; 
 int /*<<< orphan*/  MV88E6390_G2_WDOG_CTL ; 
 int MV88E6390_G2_WDOG_CTL_DATA_MASK ; 
 int /*<<< orphan*/  MV88E6390_G2_WDOG_CTL_PTR_EVENT ; 
 int /*<<< orphan*/  MV88E6390_G2_WDOG_CTL_PTR_HISTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static int FUNC5(struct mv88e6xxx_chip *chip, int irq)
{
	int err;
	u16 reg;

	FUNC3(chip, MV88E6390_G2_WDOG_CTL,
			   MV88E6390_G2_WDOG_CTL_PTR_EVENT);
	err = FUNC2(chip, MV88E6390_G2_WDOG_CTL, &reg);

	FUNC0(chip->dev, "Watchdog event: 0x%04x",
		 reg & MV88E6390_G2_WDOG_CTL_DATA_MASK);

	FUNC3(chip, MV88E6390_G2_WDOG_CTL,
			   MV88E6390_G2_WDOG_CTL_PTR_HISTORY);
	err = FUNC2(chip, MV88E6390_G2_WDOG_CTL, &reg);

	FUNC0(chip->dev, "Watchdog history: 0x%04x",
		 reg & MV88E6390_G2_WDOG_CTL_DATA_MASK);

	/* Trigger a software reset to try to recover the switch */
	if (chip->info->ops->reset)
		chip->info->ops->reset(chip);

	FUNC1(chip);

	return IRQ_HANDLED;
}