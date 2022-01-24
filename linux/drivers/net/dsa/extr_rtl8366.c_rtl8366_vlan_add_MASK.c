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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct switchdev_obj_port_vlan {int flags; int vid_begin; int vid_end; } ;
struct realtek_smi {int /*<<< orphan*/  dev; TYPE_1__* ops; } ;
struct dsa_switch {struct realtek_smi* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* is_vlan_valid ) (struct realtek_smi*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BRIDGE_VLAN_INFO_PVID ; 
 int BRIDGE_VLAN_INFO_UNTAGGED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC3 (struct dsa_switch*,int) ; 
 scalar_t__ FUNC4 (struct dsa_switch*,int) ; 
 int FUNC5 (struct realtek_smi*,int,int*) ; 
 int FUNC6 (struct realtek_smi*,int,int) ; 
 int FUNC7 (struct realtek_smi*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct realtek_smi*,int) ; 

void FUNC9(struct dsa_switch *ds, int port,
		      const struct switchdev_obj_port_vlan *vlan)
{
	bool untagged = !!(vlan->flags & BRIDGE_VLAN_INFO_UNTAGGED);
	bool pvid = !!(vlan->flags & BRIDGE_VLAN_INFO_PVID);
	struct realtek_smi *smi = ds->priv;
	u32 member = 0;
	u32 untag = 0;
	u16 vid;
	int ret;

	for (vid = vlan->vid_begin; vid < vlan->vid_end; vid++)
		if (!smi->ops->is_vlan_valid(smi, vid))
			return;

	FUNC2(smi->dev, "add VLAN on port %d, %s, %s\n",
		 port,
		 untagged ? "untagged" : "tagged",
		 pvid ? " PVID" : "no PVID");

	if (FUNC4(ds, port) || FUNC3(ds, port))
		FUNC1(smi->dev, "port is DSA or CPU port\n");

	for (vid = vlan->vid_begin; vid <= vlan->vid_end; ++vid) {
		int pvid_val = 0;

		FUNC2(smi->dev, "add VLAN %04x\n", vid);
		member |= FUNC0(port);

		if (untagged)
			untag |= FUNC0(port);

		/* To ensure that we have a valid MC entry for this VLAN,
		 * initialize the port VLAN ID here.
		 */
		ret = FUNC5(smi, port, &pvid_val);
		if (ret < 0) {
			FUNC1(smi->dev, "could not lookup PVID for port %d\n",
				port);
			return;
		}
		if (pvid_val == 0) {
			ret = FUNC6(smi, port, vid);
			if (ret < 0)
				return;
		}
	}

	ret = FUNC7(smi, port, member, untag, 0);
	if (ret)
		FUNC1(smi->dev,
			"failed to set up VLAN %04x",
			vid);
}