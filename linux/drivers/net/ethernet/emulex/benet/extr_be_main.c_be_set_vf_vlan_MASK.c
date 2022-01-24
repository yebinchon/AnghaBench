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
typedef  int u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct be_vf_cfg {int vlan_tag; } ;
struct be_adapter {int num_vfs; TYPE_1__* pdev; struct be_vf_cfg* vf_cfg; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int VLAN_PRIO_SHIFT ; 
 int FUNC0 (struct be_adapter*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct be_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct be_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, int vf, u16 vlan, u8 qos,
			  __be16 vlan_proto)
{
	struct be_adapter *adapter = FUNC5(netdev);
	struct be_vf_cfg *vf_cfg = &adapter->vf_cfg[vf];
	int status;

	if (!FUNC6(adapter))
		return -EPERM;

	if (vf >= adapter->num_vfs || vlan > 4095 || qos > 7)
		return -EINVAL;

	if (vlan_proto != FUNC4(ETH_P_8021Q))
		return -EPROTONOSUPPORT;

	if (vlan || qos) {
		vlan |= qos << VLAN_PRIO_SHIFT;
		status = FUNC2(adapter, vf, vlan);
	} else {
		status = FUNC0(adapter, vf);
	}

	if (status) {
		FUNC3(&adapter->pdev->dev,
			"VLAN %d config on VF %d failed : %#x\n", vlan, vf,
			status);
		return FUNC1(status);
	}

	vf_cfg->vlan_tag = vlan;
	return 0;
}