#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;
struct TYPE_5__ {int /*<<< orphan*/  supported; } ;
struct ethtool_link_ksettings {TYPE_3__ base; TYPE_2__ link_modes; } ;
struct efx_link_state {scalar_t__ fd; int /*<<< orphan*/  speed; } ;
struct efx_nic {int /*<<< orphan*/  mac_lock; TYPE_1__* phy_op; struct efx_link_state link_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_link_ksettings ) (struct efx_nic*,struct ethtool_link_ksettings*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_HALF ; 
 scalar_t__ FUNC0 (struct efx_nic*) ; 
 int SUPPORTED_Asym_Pause ; 
 int SUPPORTED_Pause ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,struct ethtool_link_ksettings*) ; 

__attribute__((used)) static int
FUNC7(struct net_device *net_dev,
			       struct ethtool_link_ksettings *cmd)
{
	struct efx_nic *efx = FUNC5(net_dev);
	struct efx_link_state *link_state = &efx->link_state;
	u32 supported;

	FUNC3(&efx->mac_lock);
	efx->phy_op->get_link_ksettings(efx, cmd);
	FUNC4(&efx->mac_lock);

	/* Both MACs support pause frames (bidirectional and respond-only) */
	FUNC2(&supported,
						cmd->link_modes.supported);

	supported |= SUPPORTED_Pause | SUPPORTED_Asym_Pause;

	FUNC1(cmd->link_modes.supported,
						supported);

	if (FUNC0(efx)) {
		cmd->base.speed = link_state->speed;
		cmd->base.duplex = link_state->fd ? DUPLEX_FULL : DUPLEX_HALF;
	}

	return 0;
}