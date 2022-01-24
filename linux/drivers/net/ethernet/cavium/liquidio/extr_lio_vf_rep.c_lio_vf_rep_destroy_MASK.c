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
struct TYPE_5__ {int num_vfs; struct net_device** ndev; } ;
struct TYPE_6__ {int /*<<< orphan*/  sriov_enabled; } ;
struct octeon_device {scalar_t__ eswitch_mode; TYPE_2__ vf_rep_list; TYPE_3__ sriov_info; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct lio_vf_rep_desc {TYPE_1__ stats_wk; } ;

/* Variables and functions */
 scalar_t__ DEVLINK_ESWITCH_MODE_SWITCHDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct lio_vf_rep_desc* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

void
FUNC6(struct octeon_device *oct)
{
	struct lio_vf_rep_desc *vf_rep;
	struct net_device *ndev;
	int i;

	if (oct->eswitch_mode != DEVLINK_ESWITCH_MODE_SWITCHDEV)
		return;

	if (!oct->sriov_info.sriov_enabled)
		return;

	for (i = 0; i < oct->vf_rep_list.num_vfs; i++) {
		ndev = oct->vf_rep_list.ndev[i];
		oct->vf_rep_list.ndev[i] = NULL;
		if (ndev) {
			vf_rep = FUNC2(ndev);
			FUNC0
				(&vf_rep->stats_wk.work);
			FUNC4(ndev);
			FUNC3(ndev);

			FUNC5(ndev);
			FUNC1(ndev);
		}
	}

	oct->vf_rep_list.num_vfs = 0;
}