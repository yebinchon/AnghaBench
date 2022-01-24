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
typedef  int /*<<< orphan*/  u16 ;
struct mv88e6xxx_chip {int dummy; } ;
struct mv88e6xxx_atu_entry {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV88E6XXX_G1_ATU_OP_GET_NEXT_DB ; 
 int FUNC0 (struct mv88e6xxx_chip*,struct mv88e6xxx_atu_entry*) ; 
 int FUNC1 (struct mv88e6xxx_chip*,struct mv88e6xxx_atu_entry*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,struct mv88e6xxx_atu_entry*) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mv88e6xxx_chip*) ; 

int FUNC5(struct mv88e6xxx_chip *chip, u16 fid,
			     struct mv88e6xxx_atu_entry *entry)
{
	int err;

	err = FUNC4(chip);
	if (err)
		return err;

	/* Write the MAC address to iterate from only once */
	if (!entry->state) {
		err = FUNC2(chip, entry);
		if (err)
			return err;
	}

	err = FUNC3(chip, fid, MV88E6XXX_G1_ATU_OP_GET_NEXT_DB);
	if (err)
		return err;

	err = FUNC0(chip, entry);
	if (err)
		return err;

	return FUNC1(chip, entry);
}