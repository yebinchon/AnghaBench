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
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV88E6XXX_G1_VTU_OP_FLUSH_ALL ; 
 int FUNC0 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mv88e6xxx_chip*) ; 

int FUNC2(struct mv88e6xxx_chip *chip)
{
	int err;

	err = FUNC1(chip);
	if (err)
		return err;

	return FUNC0(chip, MV88E6XXX_G1_VTU_OP_FLUSH_ALL);
}