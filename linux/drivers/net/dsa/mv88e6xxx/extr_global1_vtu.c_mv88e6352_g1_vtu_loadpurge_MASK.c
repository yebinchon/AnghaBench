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
struct mv88e6xxx_vtu_entry {scalar_t__ valid; } ;
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV88E6XXX_G1_VTU_OP_STU_LOAD_PURGE ; 
 int /*<<< orphan*/  MV88E6XXX_G1_VTU_OP_VTU_LOAD_PURGE ; 
 int FUNC0 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 
 int FUNC1 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mv88e6xxx_chip*) ; 
 int FUNC4 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 
 int FUNC5 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 

int FUNC6(struct mv88e6xxx_chip *chip,
			       struct mv88e6xxx_vtu_entry *entry)
{
	int err;

	err = FUNC3(chip);
	if (err)
		return err;

	err = FUNC5(chip, entry);
	if (err)
		return err;

	if (entry->valid) {
		/* Write MemberTag and PortState data */
		err = FUNC0(chip, entry);
		if (err)
			return err;

		err = FUNC4(chip, entry);
		if (err)
			return err;

		/* Load STU entry */
		err = FUNC2(chip,
					  MV88E6XXX_G1_VTU_OP_STU_LOAD_PURGE);
		if (err)
			return err;

		err = FUNC1(chip, entry);
		if (err)
			return err;
	}

	/* Load/Purge VTU entry */
	return FUNC2(chip, MV88E6XXX_G1_VTU_OP_VTU_LOAD_PURGE);
}