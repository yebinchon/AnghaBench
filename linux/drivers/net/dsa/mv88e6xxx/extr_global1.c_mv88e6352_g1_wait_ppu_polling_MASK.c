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
 int /*<<< orphan*/  MV88E6352_G1_STS_PPU_STATE ; 
 int /*<<< orphan*/  MV88E6XXX_G1_STS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct mv88e6xxx_chip *chip)
{
	int bit = FUNC0(MV88E6352_G1_STS_PPU_STATE);

	return FUNC1(chip, MV88E6XXX_G1_STS, bit, 1);
}