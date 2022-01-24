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
struct bnx2x_vlan_mac_obj {int (* delete_all ) (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*,unsigned long*) ;} ;
struct bnx2x_mcast_ramrod_params {unsigned long ramrod_flags; int /*<<< orphan*/ * mcast_obj; int /*<<< orphan*/ * member_0; } ;
struct bnx2x {int /*<<< orphan*/  dev; int /*<<< orphan*/  mcast_obj; TYPE_1__* sp_objs; } ;
struct TYPE_2__ {struct bnx2x_vlan_mac_obj mac_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BNX2X_ETH_MAC ; 
 int /*<<< orphan*/  BNX2X_MCAST_CMD_CONT ; 
 int /*<<< orphan*/  BNX2X_MCAST_CMD_DEL ; 
 int /*<<< orphan*/  BNX2X_UC_LIST_MAC ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  RAMROD_DRV_CLR_ONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC2 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*,unsigned long*) ; 
 int FUNC6 (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*,unsigned long*) ; 

void FUNC7(struct bnx2x *bp)
{
	int rc;
	unsigned long ramrod_flags = 0, vlan_mac_flags = 0;
	struct bnx2x_mcast_ramrod_params rparam = {NULL};
	struct bnx2x_vlan_mac_obj *mac_obj = &bp->sp_objs->mac_obj;

	/***************** Cleanup MACs' object first *************************/

	/* Wait for completion of requested */
	FUNC1(RAMROD_COMP_WAIT, &ramrod_flags);
	/* Perform a dry cleanup */
	FUNC1(RAMROD_DRV_CLR_ONLY, &ramrod_flags);

	/* Clean ETH primary MAC */
	FUNC1(BNX2X_ETH_MAC, &vlan_mac_flags);
	rc = mac_obj->delete_all(bp, &bp->sp_objs->mac_obj, &vlan_mac_flags,
				 &ramrod_flags);
	if (rc != 0)
		FUNC0("Failed to clean ETH MACs: %d\n", rc);

	/* Cleanup UC list */
	vlan_mac_flags = 0;
	FUNC1(BNX2X_UC_LIST_MAC, &vlan_mac_flags);
	rc = mac_obj->delete_all(bp, mac_obj, &vlan_mac_flags,
				 &ramrod_flags);
	if (rc != 0)
		FUNC0("Failed to clean UC list MACs: %d\n", rc);

	/***************** Now clean mcast object *****************************/
	rparam.mcast_obj = &bp->mcast_obj;
	FUNC1(RAMROD_DRV_CLR_ONLY, &rparam.ramrod_flags);

	/* Add a DEL command... - Since we're doing a driver cleanup only,
	 * we take a lock surrounding both the initial send and the CONTs,
	 * as we don't want a true completion to disrupt us in the middle.
	 */
	FUNC3(bp->dev);
	rc = FUNC2(bp, &rparam, BNX2X_MCAST_CMD_DEL);
	if (rc < 0)
		FUNC0("Failed to add a new DEL command to a multi-cast object: %d\n",
			  rc);

	/* ...and wait until all pending commands are cleared */
	rc = FUNC2(bp, &rparam, BNX2X_MCAST_CMD_CONT);
	while (rc != 0) {
		if (rc < 0) {
			FUNC0("Failed to clean multi-cast object: %d\n",
				  rc);
			FUNC4(bp->dev);
			return;
		}

		rc = FUNC2(bp, &rparam, BNX2X_MCAST_CMD_CONT);
	}
	FUNC4(bp->dev);
}