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
typedef  int /*<<< orphan*/  u16 ;
struct mv88e6xxx_chip {TYPE_1__* ds; } ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct mv88e6xxx_chip*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct mv88e6xxx_chip*,int,int) ; 

__attribute__((used)) static int FUNC3(struct mv88e6xxx_chip *chip, int dev, int port)
{
	u16 pvlan = 0;

	if (!FUNC1(chip))
		return -EOPNOTSUPP;

	/* Skip the local source device, which uses in-chip port VLAN */
	if (dev != chip->ds->index)
		pvlan = FUNC2(chip, dev, port);

	return FUNC0(chip, dev, port, pvlan);
}