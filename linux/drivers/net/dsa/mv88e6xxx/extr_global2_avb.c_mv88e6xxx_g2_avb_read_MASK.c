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
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int E2BIG ; 
 int /*<<< orphan*/  MV88E6352_G2_AVB_CMD ; 
 int MV88E6352_G2_AVB_CMD_BUSY ; 
 int /*<<< orphan*/  MV88E6352_G2_AVB_DATA ; 
 int FUNC0 (struct mv88e6xxx_chip*) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct mv88e6xxx_chip *chip, u16 readop,
				 u16 *data, int len)
{
	int err;
	int i;

	err = FUNC0(chip);
	if (err)
		return err;

	/* Hardware can only snapshot four words. */
	if (len > 4)
		return -E2BIG;

	err = FUNC2(chip, MV88E6352_G2_AVB_CMD,
				 MV88E6352_G2_AVB_CMD_BUSY | readop);
	if (err)
		return err;

	err = FUNC0(chip);
	if (err)
		return err;

	for (i = 0; i < len; ++i) {
		err = FUNC1(chip, MV88E6352_G2_AVB_DATA,
					&data[i]);
		if (err)
			return err;
	}

	return 0;
}