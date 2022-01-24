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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct mv88e6xxx_chip*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC3(struct mv88e6xxx_chip *chip)
{
	int port;
	int err;
	u16 val;

	for (port = 0; port < FUNC1(chip); port++) {
		err = FUNC2(chip, 0xf, port, 0, &val);
		if (err) {
			FUNC0(chip->dev,
				"Error reading hidden register: %d\n", err);
			return false;
		}
		if (val != 0x01c0)
			return false;
	}

	return true;
}