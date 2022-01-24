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
typedef  int /*<<< orphan*/  typebuf ;
struct efx_udp_tunnel {scalar_t__ type; int /*<<< orphan*/  port; scalar_t__ count; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int datapath_caps; int /*<<< orphan*/  udp_tunnels_lock; } ;

/* Variables and functions */
 int ENOENT ; 
 int MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN ; 
 struct efx_udp_tunnel* FUNC0 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*) ; 
 int FUNC2 (struct efx_nic*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct efx_nic *efx,
				     struct efx_udp_tunnel tnl)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	struct efx_udp_tunnel *match;
	char typebuf[8];
	int rc;

	if (!(nic_data->datapath_caps &
	      (1 << MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN)))
		return 0;

	FUNC3(tnl.type, typebuf, sizeof(typebuf));
	FUNC6(efx, drv, efx->net_dev, "Removing UDP tunnel (%s) port %d\n",
		  typebuf, FUNC8(tnl.port));

	FUNC4(&nic_data->udp_tunnels_lock);
	/* Make sure all TX are stopped while we remove from the table, else we
	 * might race against an efx_features_check().
	 */
	FUNC1(efx);

	match = FUNC0(efx, tnl.port);
	if (match != NULL) {
		if (match->type == tnl.type) {
			if (--match->count) {
				/* Port is still in use, so nothing to do */
				FUNC6(efx, drv, efx->net_dev,
					  "UDP tunnel port %d remains active\n",
					  FUNC8(tnl.port));
				rc = 0;
				goto out_unlock;
			}
			rc = FUNC2(efx, false);
			goto out_unlock;
		}
		FUNC3(match->type,
					     typebuf, sizeof(typebuf));
		FUNC7(efx, drv, efx->net_dev,
			   "UDP port %d is actually in use by %s, not removing\n",
			   FUNC8(tnl.port), typebuf);
	}
	rc = -ENOENT;

out_unlock:
	FUNC5(&nic_data->udp_tunnels_lock);
	return rc;
}