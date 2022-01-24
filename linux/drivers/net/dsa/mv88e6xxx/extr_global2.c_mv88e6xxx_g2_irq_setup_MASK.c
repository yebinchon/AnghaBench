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
struct TYPE_6__ {int /*<<< orphan*/  domain; int /*<<< orphan*/  masked; int /*<<< orphan*/  chip; } ;
struct TYPE_5__ {int /*<<< orphan*/  domain; } ;
struct mv88e6xxx_chip {int device_irq; TYPE_3__ g2_irq; TYPE_2__ g1_irq; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int MV88E6XXX_G1_STS_IRQ_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mv88e6xxx_g2_irq_chip ; 
 int /*<<< orphan*/  mv88e6xxx_g2_irq_domain_ops ; 
 int /*<<< orphan*/  mv88e6xxx_g2_irq_thread_fn ; 
 int FUNC5 (struct mv88e6xxx_chip*) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mv88e6xxx_chip*) ; 

int FUNC7(struct mv88e6xxx_chip *chip)
{
	int err, irq, virq;

	chip->g2_irq.domain = FUNC2(
		chip->dev->of_node, 16, 0, &mv88e6xxx_g2_irq_domain_ops, chip);
	if (!chip->g2_irq.domain)
		return -ENOMEM;

	for (irq = 0; irq < 16; irq++)
		FUNC0(chip->g2_irq.domain, irq);

	chip->g2_irq.chip = mv88e6xxx_g2_irq_chip;
	chip->g2_irq.masked = ~0;

	chip->device_irq = FUNC4(chip->g1_irq.domain,
					    MV88E6XXX_G1_STS_IRQ_DEVICE);
	if (chip->device_irq < 0) {
		err = chip->device_irq;
		goto out;
	}

	err = FUNC6(chip->device_irq, NULL,
				   mv88e6xxx_g2_irq_thread_fn,
				   IRQF_ONESHOT, "mv88e6xxx-g2", chip);
	if (err)
		goto out;

	return FUNC5(chip);

out:
	for (irq = 0; irq < 16; irq++) {
		virq = FUNC4(chip->g2_irq.domain, irq);
		FUNC1(virq);
	}

	FUNC3(chip->g2_irq.domain);

	return err;
}