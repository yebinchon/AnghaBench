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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int MDIO_CMD_WR ; 
 int FUNC3 (struct mii_bus*,int) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int phy_id, int reg, u16 val)
{
	u32 cmd = FUNC0(phy_id) | FUNC2(reg) |
		FUNC1(val) | MDIO_CMD_WR;

	return FUNC3(bus, cmd);
}