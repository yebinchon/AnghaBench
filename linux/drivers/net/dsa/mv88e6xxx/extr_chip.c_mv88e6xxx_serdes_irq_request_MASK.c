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
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct mv88e6xxx_chip*,int) ; 
 int /*<<< orphan*/  mv88e6xxx_serdes_irq_thread_fn ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mv88e6xxx_port*) ; 

__attribute__((used)) static int FUNC5(struct mv88e6xxx_chip *chip, int port,
					u8 lane)
{
	struct mv88e6xxx_port *dev_id = &chip->ports[port];
	unsigned int irq;
	int err;

	/* Nothing to request if this SERDES port has no IRQ */
	irq = FUNC3(chip, port);
	if (!irq)
		return 0;

	/* Requesting the IRQ will trigger IRQ callbacks, so release the lock */
	FUNC1(chip);
	err = FUNC4(irq, NULL, mv88e6xxx_serdes_irq_thread_fn,
				   IRQF_ONESHOT, "mv88e6xxx-serdes", dev_id);
	FUNC0(chip);
	if (err)
		return err;

	dev_id->serdes_irq = irq;

	return FUNC2(chip, port, lane);
}