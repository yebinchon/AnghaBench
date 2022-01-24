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
 int /*<<< orphan*/  MV88E6185_G1_CTL2_CASCADE_PORT_MASK ; 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int /*<<< orphan*/  const,int) ; 

int FUNC2(struct mv88e6xxx_chip *chip, int port)
{
	const u16 mask = MV88E6185_G1_CTL2_CASCADE_PORT_MASK;

	return FUNC1(chip, mask, port << FUNC0(mask));
}