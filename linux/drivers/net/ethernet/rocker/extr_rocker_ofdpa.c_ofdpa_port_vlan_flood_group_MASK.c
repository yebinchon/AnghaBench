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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ofdpa_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  pport; int /*<<< orphan*/  vlan_bitmap; struct ofdpa* ofdpa; } ;
struct ofdpa {TYPE_1__* rocker; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {unsigned int port_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ofdpa_port*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ofdpa_port* FUNC7 (struct ofdpa const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ofdpa_port*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ofdpa_port *ofdpa_port,
				       int flags, __be16 vlan_id)
{
	struct ofdpa_port *p;
	const struct ofdpa *ofdpa = ofdpa_port->ofdpa;
	unsigned int port_count = ofdpa->rocker->port_count;
	u32 group_id = FUNC0(vlan_id, 0);
	u32 *group_ids;
	u8 group_count = 0;
	int err = 0;
	int i;

	group_ids = FUNC2(port_count, sizeof(u32), GFP_KERNEL);
	if (!group_ids)
		return -ENOMEM;

	/* Adjust the flood group for this VLAN.  The flood group
	 * references an L2 interface group for each port in this
	 * VLAN.
	 */

	for (i = 0; i < port_count; i++) {
		p = FUNC7(ofdpa, i);
		if (!p)
			continue;
		if (!FUNC8(p))
			continue;
		if (FUNC9(FUNC5(vlan_id), p->vlan_bitmap)) {
			group_ids[group_count++] =
				FUNC1(vlan_id, p->pport);
		}
	}

	/* If there are no bridged ports in this VLAN, we're done */
	if (group_count == 0)
		goto no_ports_in_vlan;

	err = FUNC6(ofdpa_port, flags, vlan_id,
				   group_count, group_ids, group_id);
	if (err)
		FUNC4(ofdpa_port->dev, "Error (%d) port VLAN l2 flood group\n", err);

no_ports_in_vlan:
	FUNC3(group_ids);
	return err;
}