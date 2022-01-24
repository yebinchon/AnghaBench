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
struct falcon_nic_data {int xmac_poll_required; } ;
struct ef4_nic {int /*<<< orphan*/  rx_reset; int /*<<< orphan*/  net_dev; struct falcon_nic_data* nic_data; } ;
struct ef4_channel {int /*<<< orphan*/  channel; struct ef4_nic* efx; } ;
typedef  int /*<<< orphan*/  ef4_qword_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ EF4_REV_FALCON_A1 ; 
 scalar_t__ EF4_REV_FALCON_B0 ; 
 scalar_t__ FUNC1 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FSF_AA_GLB_EV_RX_RECOVERY ; 
 int /*<<< orphan*/  FSF_AB_GLB_EV_G_PHY0_INTR ; 
 int /*<<< orphan*/  FSF_AB_GLB_EV_XFP_PHY0_INTR ; 
 int /*<<< orphan*/  FSF_AB_GLB_EV_XG_PHY0_INTR ; 
 int /*<<< orphan*/  FSF_BB_GLB_EV_RX_RECOVERY ; 
 int /*<<< orphan*/  FSF_BB_GLB_EV_XG_MGT_INTR ; 
 int /*<<< orphan*/  RESET_TYPE_DISABLE ; 
 int /*<<< orphan*/  RESET_TYPE_RX_RECOVERY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_err ; 

__attribute__((used)) static bool
FUNC6(struct ef4_channel *channel, ef4_qword_t *event)
{
	struct ef4_nic *efx = channel->efx;
	struct falcon_nic_data *nic_data = efx->nic_data;

	if (FUNC0(*event, FSF_AB_GLB_EV_G_PHY0_INTR) ||
	    FUNC0(*event, FSF_AB_GLB_EV_XG_PHY0_INTR) ||
	    FUNC0(*event, FSF_AB_GLB_EV_XFP_PHY0_INTR))
		/* Ignored */
		return true;

	if ((FUNC3(efx) == EF4_REV_FALCON_B0) &&
	    FUNC0(*event, FSF_BB_GLB_EV_XG_MGT_INTR)) {
		nic_data->xmac_poll_required = true;
		return true;
	}

	if (FUNC3(efx) <= EF4_REV_FALCON_A1 ?
	    FUNC0(*event, FSF_AA_GLB_EV_RX_RECOVERY) :
	    FUNC0(*event, FSF_BB_GLB_EV_RX_RECOVERY)) {
		FUNC5(efx, rx_err, efx->net_dev,
			  "channel %d seen global RX_RESET event. Resetting.\n",
			  channel->channel);

		FUNC2(&efx->rx_reset);
		FUNC4(efx, FUNC1(efx) ?
				   RESET_TYPE_RX_RECOVERY : RESET_TYPE_DISABLE);
		return true;
	}

	return false;
}