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
typedef  unsigned int u16 ;
struct mv88e6xxx_info {int /*<<< orphan*/  name; int /*<<< orphan*/  prod_num; } ;
struct mv88e6xxx_chip {struct mv88e6xxx_info const* info; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MV88E6XXX_PORT_SWITCH_ID ; 
 unsigned int MV88E6XXX_PORT_SWITCH_ID_PROD_MASK ; 
 unsigned int MV88E6XXX_PORT_SWITCH_ID_REV_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (struct mv88e6xxx_chip*) ; 
 struct mv88e6xxx_info* FUNC2 (unsigned int) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static int FUNC6(struct mv88e6xxx_chip *chip)
{
	const struct mv88e6xxx_info *info;
	unsigned int prod_num, rev;
	u16 id;
	int err;

	FUNC4(chip);
	err = FUNC3(chip, 0, MV88E6XXX_PORT_SWITCH_ID, &id);
	FUNC5(chip);
	if (err)
		return err;

	prod_num = id & MV88E6XXX_PORT_SWITCH_ID_PROD_MASK;
	rev = id & MV88E6XXX_PORT_SWITCH_ID_REV_MASK;

	info = FUNC2(prod_num);
	if (!info)
		return -ENODEV;

	/* Update the compatible info with the probed one */
	chip->info = info;

	err = FUNC1(chip);
	if (err)
		return err;

	FUNC0(chip->dev, "switch 0x%x detected: %s, revision %u\n",
		 chip->info->prod_num, chip->info->name, rev);

	return 0;
}