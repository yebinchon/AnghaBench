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
struct mv88e6xxx_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct lock_class_key {int dummy; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct lock_class_key*,struct lock_class_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv88e6xxx_chip*) ; 
 int FUNC3 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  mv88e6xxx_g1_irq_thread_fn ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct mv88e6xxx_chip*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct mv88e6xxx_chip*) ; 

__attribute__((used)) static int FUNC7(struct mv88e6xxx_chip *chip)
{
	static struct lock_class_key lock_key;
	static struct lock_class_key request_key;
	int err;

	err = FUNC3(chip);
	if (err)
		return err;

	/* These lock classes tells lockdep that global 1 irqs are in
	 * a different category than their parent GPIO, so it won't
	 * report false recursion.
	 */
	FUNC1(chip->irq, &lock_key, &request_key);

	FUNC5(chip);
	err = FUNC6(chip->irq, NULL,
				   mv88e6xxx_g1_irq_thread_fn,
				   IRQF_ONESHOT | IRQF_SHARED,
				   FUNC0(chip->dev), chip);
	FUNC4(chip);
	if (err)
		FUNC2(chip);

	return err;
}