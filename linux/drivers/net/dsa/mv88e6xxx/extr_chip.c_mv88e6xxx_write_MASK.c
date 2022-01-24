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
struct mv88e6xxx_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct mv88e6xxx_chip *chip, int addr, int reg, u16 val)
{
	int err;

	FUNC0(chip);

	err = FUNC2(chip, addr, reg, val);
	if (err)
		return err;

	FUNC1(chip->dev, "-> addr: 0x%.2x reg: 0x%.2x val: 0x%.4x\n",
		addr, reg, val);

	return 0;
}