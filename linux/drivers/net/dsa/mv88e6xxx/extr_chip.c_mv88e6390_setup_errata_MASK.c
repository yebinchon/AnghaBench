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
 int /*<<< orphan*/  BR_STATE_DISABLED ; 
 scalar_t__ FUNC0 (struct mv88e6xxx_chip*) ; 
 int FUNC1 (struct mv88e6xxx_chip*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mv88e6xxx_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static int FUNC5(struct mv88e6xxx_chip *chip)
{
	int port;
	int err;

	if (FUNC0(chip))
		return 0;

	/* Set the ports into blocking mode */
	for (port = 0; port < FUNC1(chip); port++) {
		err = FUNC3(chip, port, BR_STATE_DISABLED);
		if (err)
			return err;
	}

	for (port = 0; port < FUNC1(chip); port++) {
		err = FUNC2(chip, 0xf, port, 0, 0x01c0);
		if (err)
			return err;
	}

	return FUNC4(chip);
}