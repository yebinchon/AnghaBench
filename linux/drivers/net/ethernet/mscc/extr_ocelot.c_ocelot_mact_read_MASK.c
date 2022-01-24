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
struct ocelot_port {int chip_port; struct ocelot* ocelot; } ;
struct ocelot_mact_entry {int vid; int /*<<< orphan*/  mac; } ;
struct ocelot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANA_TABLES_MACACCESS ; 
 int ANA_TABLES_MACACCESS_DEST_IDX_M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ANA_TABLES_MACACCESS_VALID ; 
 int /*<<< orphan*/  ANA_TABLES_MACHDATA ; 
 int /*<<< orphan*/  ANA_TABLES_MACLDATA ; 
 int /*<<< orphan*/  ANA_TABLES_MACTINDX_BUCKET ; 
 int /*<<< orphan*/  ANA_TABLES_MACTINDX_M_INDEX ; 
 int EINVAL ; 
 int ETH_ALEN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MACACCESS_CMD_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocelot*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct ocelot*) ; 
 int FUNC4 (struct ocelot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocelot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(struct ocelot_port *port, int row, int col,
				   struct ocelot_mact_entry *entry)
{
	struct ocelot *ocelot = port->ocelot;
	char mac[ETH_ALEN];
	u32 val, dst, macl, mach;

	/* Set row and column to read from */
	FUNC2(ocelot, ANA_TABLES_MACTINDX_M_INDEX, row);
	FUNC2(ocelot, ANA_TABLES_MACTINDX_BUCKET, col);

	/* Issue a read command */
	FUNC5(ocelot,
		     FUNC0(MACACCESS_CMD_READ),
		     ANA_TABLES_MACACCESS);

	if (FUNC3(ocelot))
		return -ETIMEDOUT;

	/* Read the entry flags */
	val = FUNC4(ocelot, ANA_TABLES_MACACCESS);
	if (!(val & ANA_TABLES_MACACCESS_VALID))
		return -EINVAL;

	/* If the entry read has another port configured as its destination,
	 * do not report it.
	 */
	dst = (val & ANA_TABLES_MACACCESS_DEST_IDX_M) >> 3;
	if (dst != port->chip_port)
		return -EINVAL;

	/* Get the entry's MAC address and VLAN id */
	macl = FUNC4(ocelot, ANA_TABLES_MACLDATA);
	mach = FUNC4(ocelot, ANA_TABLES_MACHDATA);

	mac[0] = (mach >> 8)  & 0xff;
	mac[1] = (mach >> 0)  & 0xff;
	mac[2] = (macl >> 24) & 0xff;
	mac[3] = (macl >> 16) & 0xff;
	mac[4] = (macl >> 8)  & 0xff;
	mac[5] = (macl >> 0)  & 0xff;

	entry->vid = (mach >> 16) & 0xfff;
	FUNC1(entry->mac, mac);

	return 0;
}