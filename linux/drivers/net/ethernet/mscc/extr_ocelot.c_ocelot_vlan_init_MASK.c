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
typedef  size_t u16 ;
struct ocelot {int num_phys_ports; scalar_t__* vlan_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANA_PORT_VLAN_CFG ; 
 int ANA_PORT_VLAN_CFG_VLAN_AWARE_ENA ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ANA_TABLES_VLANACCESS ; 
 scalar_t__ ANA_TABLES_VLANACCESS_CMD_INIT ; 
 int /*<<< orphan*/  ANA_VLANMASK ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REW_PORT_VLAN_CFG ; 
 int /*<<< orphan*/  REW_TAG_CFG ; 
 size_t VLAN_N_VID ; 
 int /*<<< orphan*/  FUNC3 (struct ocelot*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ocelot*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocelot*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocelot*,int,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC7(struct ocelot *ocelot)
{
	u16 port, vid;

	/* Clear VLAN table, by default all ports are members of all VLANs */
	FUNC5(ocelot, ANA_TABLES_VLANACCESS_CMD_INIT,
		     ANA_TABLES_VLANACCESS);
	FUNC4(ocelot);

	/* Configure the port VLAN memberships */
	for (vid = 1; vid < VLAN_N_VID; vid++) {
		ocelot->vlan_mask[vid] = 0;
		FUNC3(ocelot, vid, ocelot->vlan_mask[vid]);
	}

	/* Because VLAN filtering is enabled, we need VID 0 to get untagged
	 * traffic.  It is added automatically if 8021q module is loaded, but
	 * we can't rely on it since module may be not loaded.
	 */
	ocelot->vlan_mask[0] = FUNC2(ocelot->num_phys_ports - 1, 0);
	FUNC3(ocelot, 0, ocelot->vlan_mask[0]);

	/* Configure the CPU port to be VLAN aware */
	FUNC6(ocelot, FUNC1(0) |
				 ANA_PORT_VLAN_CFG_VLAN_AWARE_ENA |
				 FUNC0(1),
			 ANA_PORT_VLAN_CFG, ocelot->num_phys_ports);

	/* Set vlan ingress filter mask to all ports but the CPU port by
	 * default.
	 */
	FUNC5(ocelot, FUNC2(9, 0), ANA_VLANMASK);

	for (port = 0; port < ocelot->num_phys_ports; port++) {
		FUNC6(ocelot, 0, REW_PORT_VLAN_CFG, port);
		FUNC6(ocelot, 0, REW_TAG_CFG, port);
	}
}