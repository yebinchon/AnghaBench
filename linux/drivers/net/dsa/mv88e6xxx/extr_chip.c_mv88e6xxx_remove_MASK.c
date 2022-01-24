#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mv88e6xxx_chip {scalar_t__ irq; TYPE_1__* info; } ;
struct mdio_device {int /*<<< orphan*/  dev; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
struct TYPE_2__ {scalar_t__ g2_irqs; scalar_t__ ptp_support; } ;

/* Variables and functions */
 struct dsa_switch* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static void FUNC11(struct mdio_device *mdiodev)
{
	struct dsa_switch *ds = FUNC0(&mdiodev->dev);
	struct mv88e6xxx_chip *chip = ds->priv;

	if (chip->info->ptp_support) {
		FUNC5(chip);
		FUNC9(chip);
	}

	FUNC8(chip);
	FUNC10(chip);
	FUNC7(chip);

	FUNC3(chip);
	FUNC1(chip);

	if (chip->info->g2_irqs > 0)
		FUNC4(chip);

	if (chip->irq > 0)
		FUNC2(chip);
	else
		FUNC6(chip);
}