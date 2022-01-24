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
typedef  int u16 ;
struct ofdpa_port {int /*<<< orphan*/  vlan_bitmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  pport; } ;
typedef  enum rocker_of_dpa_table_id { ____Placeholder_rocker_of_dpa_table_id } rocker_of_dpa_table_id ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int OFDPA_OP_FLAG_REMOVE ; 
 int ROCKER_OF_DPA_TABLE_ID_TERMINATION_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ofdpa_port*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ofdpa_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ofdpa_port*,int,int*) ; 
 int FUNC7 (struct ofdpa_port*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ofdpa_port*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ofdpa_port *ofdpa_port, int flags,
			   u16 vid)
{
	enum rocker_of_dpa_table_id goto_tbl =
			ROCKER_OF_DPA_TABLE_ID_TERMINATION_MAC;
	u32 in_pport = ofdpa_port->pport;
	__be16 vlan_id = FUNC1(vid);
	__be16 vlan_id_mask = FUNC1(0xffff);
	__be16 internal_vlan_id;
	bool untagged;
	bool adding = !(flags & OFDPA_OP_FLAG_REMOVE);
	int err;

	internal_vlan_id = FUNC6(ofdpa_port, vid, &untagged);

	if (adding &&
	    FUNC9(FUNC3(internal_vlan_id), ofdpa_port->vlan_bitmap))
		return 0; /* already added */
	else if (!adding &&
		 !FUNC9(FUNC3(internal_vlan_id), ofdpa_port->vlan_bitmap))
		return 0; /* already removed */

	FUNC0(FUNC3(internal_vlan_id), ofdpa_port->vlan_bitmap);

	if (adding) {
		err = FUNC5(ofdpa_port, flags,
					       internal_vlan_id);
		if (err) {
			FUNC2(ofdpa_port->dev, "Error (%d) port ctrl vlan add\n", err);
			goto err_vlan_add;
		}
	}

	err = FUNC8(ofdpa_port, flags,
					internal_vlan_id, untagged);
	if (err) {
		FUNC2(ofdpa_port->dev, "Error (%d) port VLAN l2 groups\n", err);
		goto err_vlan_l2_groups;
	}

	err = FUNC7(ofdpa_port, flags,
					  internal_vlan_id);
	if (err) {
		FUNC2(ofdpa_port->dev, "Error (%d) port VLAN l2 flood group\n", err);
		goto err_flood_group;
	}

	err = FUNC4(ofdpa_port, flags,
				  in_pport, vlan_id, vlan_id_mask,
				  goto_tbl, untagged, internal_vlan_id);
	if (err)
		FUNC2(ofdpa_port->dev, "Error (%d) port VLAN table\n", err);

	return 0;

err_vlan_add:
err_vlan_l2_groups:
err_flood_group:
	FUNC0(FUNC3(internal_vlan_id), ofdpa_port->vlan_bitmap);
	return err;
}