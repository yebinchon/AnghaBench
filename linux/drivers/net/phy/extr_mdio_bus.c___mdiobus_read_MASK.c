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
typedef  int /*<<< orphan*/  u32 ;
struct mii_bus {int (* read ) (struct mii_bus*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mdio_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mii_bus*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_bus*,int,int,int /*<<< orphan*/ ,int,int) ; 

int FUNC4(struct mii_bus *bus, int addr, u32 regnum)
{
	int retval;

	FUNC0(!FUNC1(&bus->mdio_lock));

	retval = bus->read(bus, addr, regnum);

	FUNC3(bus, 1, addr, regnum, retval, retval);

	return retval;
}