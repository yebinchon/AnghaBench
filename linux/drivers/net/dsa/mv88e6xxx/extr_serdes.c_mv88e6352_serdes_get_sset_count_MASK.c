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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mv88e6xxx_chip*,int) ; 
 int /*<<< orphan*/  mv88e6352_serdes_hw_stats ; 

int FUNC2(struct mv88e6xxx_chip *chip, int port)
{
	if (FUNC1(chip, port))
		return FUNC0(mv88e6352_serdes_hw_stats);

	return 0;
}