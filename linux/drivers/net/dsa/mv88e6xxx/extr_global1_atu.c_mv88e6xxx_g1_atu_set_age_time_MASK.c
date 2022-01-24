#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct mv88e6xxx_chip {int /*<<< orphan*/  dev; TYPE_1__* info; } ;
struct TYPE_2__ {unsigned int age_time_coeff; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  MV88E6XXX_G1_ATU_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct mv88e6xxx_chip *chip,
				  unsigned int msecs)
{
	const unsigned int coeff = chip->info->age_time_coeff;
	const unsigned int min = 0x01 * coeff;
	const unsigned int max = 0xff * coeff;
	u8 age_time;
	u16 val;
	int err;

	if (msecs < min || msecs > max)
		return -ERANGE;

	/* Round to nearest multiple of coeff */
	age_time = (msecs + coeff / 2) / coeff;

	err = FUNC1(chip, MV88E6XXX_G1_ATU_CTL, &val);
	if (err)
		return err;

	/* AgeTime is 11:4 bits */
	val &= ~0xff0;
	val |= age_time << 4;

	err = FUNC2(chip, MV88E6XXX_G1_ATU_CTL, val);
	if (err)
		return err;

	FUNC0(chip->dev, "AgeTime set to 0x%02x (%d ms)\n", age_time,
		age_time * coeff);

	return 0;
}