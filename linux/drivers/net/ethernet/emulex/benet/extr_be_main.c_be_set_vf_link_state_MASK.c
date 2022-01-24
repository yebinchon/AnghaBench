#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct be_adapter {int num_vfs; TYPE_2__* vf_cfg; TYPE_1__* pdev; } ;
struct TYPE_4__ {int plink_tracking; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int FUNC0 (struct be_adapter*,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct be_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, int vf,
				int link_state)
{
	struct be_adapter *adapter = FUNC3(netdev);
	int status;

	if (!FUNC4(adapter))
		return -EPERM;

	if (vf >= adapter->num_vfs)
		return -EINVAL;

	status = FUNC0(adapter, link_state, vf+1);
	if (status) {
		FUNC2(&adapter->pdev->dev,
			"Link state change on VF %d failed: %#x\n", vf, status);
		return FUNC1(status);
	}

	adapter->vf_cfg[vf].plink_tracking = link_state;

	return 0;
}