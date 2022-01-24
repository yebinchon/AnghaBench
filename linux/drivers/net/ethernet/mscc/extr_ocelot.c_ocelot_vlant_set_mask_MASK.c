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
typedef  int /*<<< orphan*/  u16 ;
struct ocelot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANA_TABLES_VLANACCESS ; 
 int ANA_TABLES_VLANACCESS_CMD_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ANA_TABLES_VLANTIDX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ocelot*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocelot*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ocelot *ocelot, u16 vid, u32 mask)
{
	/* Select the VID to configure */
	FUNC3(ocelot, FUNC1(vid),
		     ANA_TABLES_VLANTIDX);
	/* Set the vlan port members mask and issue a write command */
	FUNC3(ocelot, FUNC0(mask) |
			     ANA_TABLES_VLANACCESS_CMD_WRITE,
		     ANA_TABLES_VLANACCESS);

	return FUNC2(ocelot);
}