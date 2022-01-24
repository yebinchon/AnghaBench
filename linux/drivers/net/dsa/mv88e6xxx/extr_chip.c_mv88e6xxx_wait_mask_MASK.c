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
typedef  int u16 ;
struct mv88e6xxx_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

int FUNC3(struct mv88e6xxx_chip *chip, int addr, int reg,
			u16 mask, u16 val)
{
	u16 data;
	int err;
	int i;

	/* There's no bus specific operation to wait for a mask */
	for (i = 0; i < 16; i++) {
		err = FUNC1(chip, addr, reg, &data);
		if (err)
			return err;

		if ((data & mask) == val)
			return 0;

		FUNC2(1000, 2000);
	}

	FUNC0(chip->dev, "Timeout while waiting for switch\n");
	return -ETIMEDOUT;
}