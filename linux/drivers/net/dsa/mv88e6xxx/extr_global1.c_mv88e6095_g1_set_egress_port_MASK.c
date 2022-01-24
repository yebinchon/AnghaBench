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
 int /*<<< orphan*/  MV88E6185_G1_MONITOR_CTL ; 
 int MV88E6185_G1_MONITOR_CTL_EGRESS_DEST_MASK ; 
 int MV88E6185_G1_MONITOR_CTL_INGRESS_DEST_MASK ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct mv88e6xxx_chip *chip, int port)
{
	u16 reg;
	int err;

	err = FUNC1(chip, MV88E6185_G1_MONITOR_CTL, &reg);
	if (err)
		return err;

	reg &= ~(MV88E6185_G1_MONITOR_CTL_INGRESS_DEST_MASK |
		 MV88E6185_G1_MONITOR_CTL_EGRESS_DEST_MASK);

	reg |= port << FUNC0(MV88E6185_G1_MONITOR_CTL_INGRESS_DEST_MASK) |
		port << FUNC0(MV88E6185_G1_MONITOR_CTL_EGRESS_DEST_MASK);

	return FUNC2(chip, MV88E6185_G1_MONITOR_CTL, reg);
}