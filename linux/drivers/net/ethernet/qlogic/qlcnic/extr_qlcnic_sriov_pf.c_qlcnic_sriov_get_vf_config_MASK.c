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
struct qlcnic_vport {int max_tx_bw; int min_tx_bw; int /*<<< orphan*/  spoofchk; int /*<<< orphan*/  qos; int /*<<< orphan*/  mac; } ;
struct qlcnic_sriov {int num_vfs; TYPE_2__* vf_info; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct ifla_vf_info {int max_tx_rate; int min_tx_rate; int vf; int /*<<< orphan*/  spoofchk; int /*<<< orphan*/  qos; int /*<<< orphan*/  vlan; int /*<<< orphan*/  mac; } ;
struct TYPE_4__ {struct qlcnic_vport* vp; } ;
struct TYPE_3__ {struct qlcnic_sriov* sriov; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int MAX_BW ; 
 int MIN_BW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,struct qlcnic_vport*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 

int FUNC4(struct net_device *netdev,
			       int vf, struct ifla_vf_info *ivi)
{
	struct qlcnic_adapter *adapter = FUNC1(netdev);
	struct qlcnic_sriov *sriov = adapter->ahw->sriov;
	struct qlcnic_vport *vp;

	if (!FUNC3(adapter))
		return -EOPNOTSUPP;

	if (vf >= sriov->num_vfs)
		return -EINVAL;

	vp = sriov->vf_info[vf].vp;
	FUNC0(&ivi->mac, vp->mac, ETH_ALEN);
	ivi->vlan = FUNC2(adapter, vp, vf);
	ivi->qos = vp->qos;
	ivi->spoofchk = vp->spoofchk;
	if (vp->max_tx_bw == MAX_BW)
		ivi->max_tx_rate = 0;
	else
		ivi->max_tx_rate = vp->max_tx_bw * 100;
	if (vp->min_tx_bw == MIN_BW)
		ivi->min_tx_rate = 0;
	else
		ivi->min_tx_rate = vp->min_tx_bw * 100;

	ivi->vf = vf;
	return 0;
}