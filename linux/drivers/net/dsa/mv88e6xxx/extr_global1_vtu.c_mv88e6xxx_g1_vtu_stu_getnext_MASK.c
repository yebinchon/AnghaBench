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
struct mv88e6xxx_vtu_entry {int dummy; } ;
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV88E6XXX_G1_VTU_OP_STU_GET_NEXT ; 
 int FUNC0 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 
 int FUNC3 (struct mv88e6xxx_chip*,struct mv88e6xxx_vtu_entry*) ; 

__attribute__((used)) static int FUNC4(struct mv88e6xxx_chip *chip,
					struct mv88e6xxx_vtu_entry *entry)
{
	int err;

	err = FUNC2(chip, entry);
	if (err)
		return err;

	err = FUNC0(chip, MV88E6XXX_G1_VTU_OP_STU_GET_NEXT);
	if (err)
		return err;

	err = FUNC1(chip, entry);
	if (err)
		return err;

	return FUNC3(chip, entry);
}