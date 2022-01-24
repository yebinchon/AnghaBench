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
typedef  int /*<<< orphan*/  u8 ;
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mv88e6xxx_chip*,int) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mv88e6xxx_chip *chip, int port,
				  bool on)
{
	u8 lane;
	int err;

	lane = FUNC0(chip, port);
	if (!lane)
		return 0;

	if (on) {
		err = FUNC4(chip, port, lane);
		if (err)
			return err;

		err = FUNC2(chip, port, lane);
	} else {
		err = FUNC1(chip, port, lane);
		if (err)
			return err;

		err = FUNC3(chip, port, lane);
	}

	return err;
}