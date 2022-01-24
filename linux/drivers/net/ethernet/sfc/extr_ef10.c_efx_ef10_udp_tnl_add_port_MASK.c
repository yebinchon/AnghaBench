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
struct efx_udp_tunnel {scalar_t__ type; int count; int /*<<< orphan*/  port; } ;
struct efx_nic {int /*<<< orphan*/  net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int datapath_caps; int /*<<< orphan*/  udp_tunnels_lock; struct efx_udp_tunnel* udp_tunnels; } ;

/* Variables and functions */
 size_t FUNC0 (struct efx_udp_tunnel*) ; 
 int EEXIST ; 
 int ENOMEM ; 
 int MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN ; 
 struct efx_udp_tunnel* FUNC1 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int FUNC3 (struct efx_nic*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct efx_nic *efx,
				     struct efx_udp_tunnel tnl)
{
	struct efx_ef10_nic_data *nic_data = efx->nic_data;
	struct efx_udp_tunnel *match;
	char typebuf[8];
	size_t i;
	int rc;

	if (!(nic_data->datapath_caps &
	      (1 << MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN)))
		return 0;

	FUNC4(tnl.type, typebuf, sizeof(typebuf));
	FUNC7(efx, drv, efx->net_dev, "Adding UDP tunnel (%s) port %d\n",
		  typebuf, FUNC8(tnl.port));

	FUNC5(&nic_data->udp_tunnels_lock);
	/* Make sure all TX are stopped while we add to the table, else we
	 * might race against an efx_features_check().
	 */
	FUNC2(efx);

	match = FUNC1(efx, tnl.port);
	if (match != NULL) {
		if (match->type == tnl.type) {
			FUNC7(efx, drv, efx->net_dev,
				  "Referencing existing tunnel entry\n");
			match->count++;
			/* No need to cause an MCDI update */
			rc = 0;
			goto unlock_out;
		}
		FUNC4(match->type,
					     typebuf, sizeof(typebuf));
		FUNC7(efx, drv, efx->net_dev,
			  "UDP port %d is already in use by %s\n",
			  FUNC8(tnl.port), typebuf);
		rc = -EEXIST;
		goto unlock_out;
	}

	for (i = 0; i < FUNC0(nic_data->udp_tunnels); ++i)
		if (!nic_data->udp_tunnels[i].count) {
			nic_data->udp_tunnels[i] = tnl;
			nic_data->udp_tunnels[i].count = 1;
			rc = FUNC3(efx, false);
			goto unlock_out;
		}

	FUNC7(efx, drv, efx->net_dev,
		  "Unable to add UDP tunnel (%s) port %d; insufficient resources.\n",
		  typebuf, FUNC8(tnl.port));

	rc = -ENOMEM;

unlock_out:
	FUNC6(&nic_data->udp_tunnels_lock);
	return rc;
}