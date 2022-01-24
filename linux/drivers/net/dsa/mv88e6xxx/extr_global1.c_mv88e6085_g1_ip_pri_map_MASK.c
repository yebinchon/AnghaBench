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
 int /*<<< orphan*/  MV88E6XXX_G1_IP_PRI_0 ; 
 int /*<<< orphan*/  MV88E6XXX_G1_IP_PRI_1 ; 
 int /*<<< orphan*/  MV88E6XXX_G1_IP_PRI_2 ; 
 int /*<<< orphan*/  MV88E6XXX_G1_IP_PRI_3 ; 
 int /*<<< orphan*/  MV88E6XXX_G1_IP_PRI_4 ; 
 int /*<<< orphan*/  MV88E6XXX_G1_IP_PRI_5 ; 
 int /*<<< orphan*/  MV88E6XXX_G1_IP_PRI_6 ; 
 int /*<<< orphan*/  MV88E6XXX_G1_IP_PRI_7 ; 
 int FUNC0 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct mv88e6xxx_chip *chip)
{
	int err;

	/* Reset the IP TOS/DiffServ/Traffic priorities to defaults */
	err = FUNC0(chip, MV88E6XXX_G1_IP_PRI_0, 0x0000);
	if (err)
		return err;

	err = FUNC0(chip, MV88E6XXX_G1_IP_PRI_1, 0x0000);
	if (err)
		return err;

	err = FUNC0(chip, MV88E6XXX_G1_IP_PRI_2, 0x5555);
	if (err)
		return err;

	err = FUNC0(chip, MV88E6XXX_G1_IP_PRI_3, 0x5555);
	if (err)
		return err;

	err = FUNC0(chip, MV88E6XXX_G1_IP_PRI_4, 0xaaaa);
	if (err)
		return err;

	err = FUNC0(chip, MV88E6XXX_G1_IP_PRI_5, 0xaaaa);
	if (err)
		return err;

	err = FUNC0(chip, MV88E6XXX_G1_IP_PRI_6, 0xffff);
	if (err)
		return err;

	err = FUNC0(chip, MV88E6XXX_G1_IP_PRI_7, 0xffff);
	if (err)
		return err;

	return 0;
}