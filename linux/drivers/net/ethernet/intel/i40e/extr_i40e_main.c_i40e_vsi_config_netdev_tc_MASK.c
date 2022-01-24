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
typedef  size_t u8 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int enabled_tc; TYPE_2__* tc_info; int /*<<< orphan*/  numtc; } ;
struct i40e_vsi {TYPE_3__ tc_config; struct i40e_pf* back; struct net_device* netdev; } ;
struct TYPE_4__ {size_t* prioritytable; } ;
struct i40e_dcbx_config {TYPE_1__ etscfg; } ;
struct i40e_hw {struct i40e_dcbx_config local_dcbx_config; } ;
struct i40e_pf {int flags; struct i40e_hw hw; } ;
struct TYPE_5__ {size_t netdev_tc; int /*<<< orphan*/  qoffset; int /*<<< orphan*/  qcount; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int I40E_FLAG_TC_MQPRIO ; 
 int I40E_MAX_TRAFFIC_CLASS ; 
 int I40E_MAX_USER_PRIORITY ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct i40e_vsi *vsi, u8 enabled_tc)
{
	struct net_device *netdev = vsi->netdev;
	struct i40e_pf *pf = vsi->back;
	struct i40e_hw *hw = &pf->hw;
	u8 netdev_tc = 0;
	int i;
	struct i40e_dcbx_config *dcbcfg = &hw->local_dcbx_config;

	if (!netdev)
		return;

	if (!enabled_tc) {
		FUNC1(netdev);
		return;
	}

	/* Set up actual enabled TCs on the VSI */
	if (FUNC2(netdev, vsi->tc_config.numtc))
		return;

	/* set per TC queues for the VSI */
	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
		/* Only set TC queues for enabled tcs
		 *
		 * e.g. For a VSI that has TC0 and TC3 enabled the
		 * enabled_tc bitmap would be 0x00001001; the driver
		 * will set the numtc for netdev as 2 that will be
		 * referenced by the netdev layer as TC 0 and 1.
		 */
		if (vsi->tc_config.enabled_tc & FUNC0(i))
			FUNC4(netdev,
					vsi->tc_config.tc_info[i].netdev_tc,
					vsi->tc_config.tc_info[i].qcount,
					vsi->tc_config.tc_info[i].qoffset);
	}

	if (pf->flags & I40E_FLAG_TC_MQPRIO)
		return;

	/* Assign UP2TC map for the VSI */
	for (i = 0; i < I40E_MAX_USER_PRIORITY; i++) {
		/* Get the actual TC# for the UP */
		u8 ets_tc = dcbcfg->etscfg.prioritytable[i];
		/* Get the mapped netdev TC# for the UP */
		netdev_tc =  vsi->tc_config.tc_info[ets_tc].netdev_tc;
		FUNC3(netdev, i, netdev_tc);
	}
}