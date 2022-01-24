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
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct mv88e6xxx_chip *chip, struct mii_bus *bus,
			    int addr, int reg, u16 val)
{
	int err;

	err = FUNC0(chip);
	if (!err) {
		err = FUNC2(chip, addr, reg, val);
		FUNC1(chip);
	}

	return err;
}