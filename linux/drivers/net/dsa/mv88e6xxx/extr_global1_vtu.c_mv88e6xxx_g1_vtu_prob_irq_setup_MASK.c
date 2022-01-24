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
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;
struct mv88e6xxx_chip {scalar_t__ vtu_prob_irq; TYPE_1__ g1_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  MV88E6XXX_G1_STS_IRQ_VTU_PROB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mv88e6xxx_g1_vtu_prob_irq_thread_fn ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mv88e6xxx_chip*) ; 

int FUNC3(struct mv88e6xxx_chip *chip)
{
	int err;

	chip->vtu_prob_irq = FUNC1(chip->g1_irq.domain,
					      MV88E6XXX_G1_STS_IRQ_VTU_PROB);
	if (chip->vtu_prob_irq < 0)
		return chip->vtu_prob_irq;

	err = FUNC2(chip->vtu_prob_irq, NULL,
				   mv88e6xxx_g1_vtu_prob_irq_thread_fn,
				   IRQF_ONESHOT, "mv88e6xxx-g1-vtu-prob",
				   chip);
	if (err)
		FUNC0(chip->vtu_prob_irq);

	return err;
}