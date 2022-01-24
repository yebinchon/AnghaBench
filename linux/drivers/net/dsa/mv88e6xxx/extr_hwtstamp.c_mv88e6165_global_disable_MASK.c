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
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV88E6165_PTP_CFG ; 
 int /*<<< orphan*/  MV88E6165_PTP_CFG_DISABLE_PTP ; 
 int FUNC0 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct mv88e6xxx_chip *chip)
{
	u16 val;
	int err;

	err = FUNC0(chip, MV88E6165_PTP_CFG, &val);
	if (err)
		return err;
	val |= MV88E6165_PTP_CFG_DISABLE_PTP;

	return FUNC1(chip, MV88E6165_PTP_CFG, val);
}