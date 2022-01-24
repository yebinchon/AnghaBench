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
typedef  int /*<<< orphan*/  u8 ;
struct mv88e6xxx_port {unsigned int serdes_irq; } ;
struct mv88e6xxx_chip {struct mv88e6xxx_port* ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,struct mv88e6xxx_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv88e6xxx_chip*) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mv88e6xxx_chip *chip, int port,
				     u8 lane)
{
	struct mv88e6xxx_port *dev_id = &chip->ports[port];
	unsigned int irq = dev_id->serdes_irq;
	int err;

	/* Nothing to free if no IRQ has been requested */
	if (!irq)
		return 0;

	err = FUNC3(chip, port, lane);

	/* Freeing the IRQ will trigger IRQ callbacks, so release the lock */
	FUNC2(chip);
	FUNC0(irq, dev_id);
	FUNC1(chip);

	dev_id->serdes_irq = 0;

	return err;
}