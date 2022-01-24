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
typedef  int u64 ;
struct tp_params {int vlan_shift; int port_shift; int protocol_shift; scalar_t__ vnic_shift; int ingress_config; } ;
struct port_info {int /*<<< orphan*/  vivld; int /*<<< orphan*/  vin; } ;
struct net_device {int dummy; } ;
struct l2t_entry {int vlan; scalar_t__ lport; } ;
struct TYPE_2__ {struct tp_params tp; } ;
struct adapter {int /*<<< orphan*/  pf; TYPE_1__ params; } ;

/* Variables and functions */
 int FT_VLAN_VLD_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IPPROTO_TCP ; 
 int VLAN_NONE ; 
 int VNIC_F ; 
 struct adapter* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

u64 FUNC5(struct net_device *dev,
			const struct l2t_entry *l2t)
{
	struct adapter *adap = FUNC3(dev);
	struct tp_params *tp = &adap->params.tp;
	u64 ntuple = 0;

	/* Initialize each of the fields which we care about which are present
	 * in the Compressed Filter Tuple.
	 */
	if (tp->vlan_shift >= 0 && l2t->vlan != VLAN_NONE)
		ntuple |= (u64)(FT_VLAN_VLD_F | l2t->vlan) << tp->vlan_shift;

	if (tp->port_shift >= 0)
		ntuple |= (u64)l2t->lport << tp->port_shift;

	if (tp->protocol_shift >= 0)
		ntuple |= (u64)IPPROTO_TCP << tp->protocol_shift;

	if (tp->vnic_shift >= 0 && (tp->ingress_config & VNIC_F)) {
		struct port_info *pi = (struct port_info *)FUNC4(dev);

		ntuple |= (u64)(FUNC1(pi->vin) |
				FUNC0(adap->pf) |
				FUNC2(pi->vivld)) << tp->vnic_shift;
	}

	return ntuple;
}