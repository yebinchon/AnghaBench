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
struct net_device {int dummy; } ;
struct ifla_vf_info {int vf; int vlan; int qos; int /*<<< orphan*/  spoofchk; int /*<<< orphan*/  linkstate; int /*<<< orphan*/  mac; scalar_t__ min_tx_rate; int /*<<< orphan*/  max_tx_rate; } ;
struct be_vf_cfg {int vlan_tag; int /*<<< orphan*/  spoofchk; int /*<<< orphan*/  plink_tracking; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  tx_rate; } ;
struct be_adapter {int num_vfs; struct be_vf_cfg* vf_cfg; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int VLAN_PRIO_SHIFT ; 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct be_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, int vf,
			    struct ifla_vf_info *vi)
{
	struct be_adapter *adapter = FUNC1(netdev);
	struct be_vf_cfg *vf_cfg = &adapter->vf_cfg[vf];

	if (!FUNC2(adapter))
		return -EPERM;

	if (vf >= adapter->num_vfs)
		return -EINVAL;

	vi->vf = vf;
	vi->max_tx_rate = vf_cfg->tx_rate;
	vi->min_tx_rate = 0;
	vi->vlan = vf_cfg->vlan_tag & VLAN_VID_MASK;
	vi->qos = vf_cfg->vlan_tag >> VLAN_PRIO_SHIFT;
	FUNC0(&vi->mac, vf_cfg->mac_addr, ETH_ALEN);
	vi->linkstate = adapter->vf_cfg[vf].plink_tracking;
	vi->spoofchk = adapter->vf_cfg[vf].spoofchk;

	return 0;
}