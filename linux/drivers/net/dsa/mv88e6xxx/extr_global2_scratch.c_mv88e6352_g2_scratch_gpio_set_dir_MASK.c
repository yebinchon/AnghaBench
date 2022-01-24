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
 int /*<<< orphan*/  MV88E6352_G2_SCRATCH_GPIO_DIR0 ; 
 int MV88E6352_G2_SCRATCH_GPIO_DIR_IN ; 
 int MV88E6352_G2_SCRATCH_GPIO_DIR_OUT ; 
 int FUNC0 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static int FUNC1(struct mv88e6xxx_chip *chip,
					     unsigned int pin, bool input)
{
	int value = (input ? MV88E6352_G2_SCRATCH_GPIO_DIR_IN :
			     MV88E6352_G2_SCRATCH_GPIO_DIR_OUT);

	return FUNC0(chip,
					    MV88E6352_G2_SCRATCH_GPIO_DIR0,
					    pin, value);
}