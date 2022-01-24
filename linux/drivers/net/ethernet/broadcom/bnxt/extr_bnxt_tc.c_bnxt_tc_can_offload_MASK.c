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
struct TYPE_6__ {int /*<<< orphan*/  ether_type; int /*<<< orphan*/  inner_vlan_tpid; int /*<<< orphan*/  inner_vlan_tci; int /*<<< orphan*/  dmac; int /*<<< orphan*/ * smac; } ;
struct TYPE_5__ {int /*<<< orphan*/  inner_vlan_tpid; int /*<<< orphan*/  inner_vlan_tci; int /*<<< orphan*/  dmac; int /*<<< orphan*/  smac; } ;
struct TYPE_4__ {scalar_t__ ip_proto; } ;
struct bnxt_tc_flow {int flags; TYPE_3__ l2_mask; TYPE_2__ l2_key; TYPE_1__ l4_key; } ;
struct bnxt {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BNXT_TC_FLOW_FLAGS_PORTS ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static bool FUNC4(struct bnxt *bp, struct bnxt_tc_flow *flow)
{
	/* If L4 ports are specified then ip_proto must be TCP or UDP */
	if ((flow->flags & BNXT_TC_FLOW_FLAGS_PORTS) &&
	    (flow->l4_key.ip_proto != IPPROTO_TCP &&
	     flow->l4_key.ip_proto != IPPROTO_UDP)) {
		FUNC3(bp->dev, "Cannot offload non-TCP/UDP (%d) ports",
			    flow->l4_key.ip_proto);
		return false;
	}

	/* Currently source/dest MAC cannot be partial wildcard  */
	if (FUNC0(&flow->l2_key.smac, sizeof(flow->l2_key.smac)) &&
	    !FUNC1(flow->l2_mask.smac, sizeof(flow->l2_mask.smac))) {
		FUNC3(bp->dev, "Wildcard match unsupported for Source MAC\n");
		return false;
	}
	if (FUNC0(&flow->l2_key.dmac, sizeof(flow->l2_key.dmac)) &&
	    !FUNC1(&flow->l2_mask.dmac, sizeof(flow->l2_mask.dmac))) {
		FUNC3(bp->dev, "Wildcard match unsupported for Dest MAC\n");
		return false;
	}

	/* Currently VLAN fields cannot be partial wildcard */
	if (FUNC0(&flow->l2_key.inner_vlan_tci,
		     sizeof(flow->l2_key.inner_vlan_tci)) &&
	    !FUNC2(flow->l2_mask.inner_vlan_tci,
				 flow->l2_key.inner_vlan_tci)) {
		FUNC3(bp->dev, "Unsupported VLAN TCI\n");
		return false;
	}
	if (FUNC0(&flow->l2_key.inner_vlan_tpid,
		     sizeof(flow->l2_key.inner_vlan_tpid)) &&
	    !FUNC1(&flow->l2_mask.inner_vlan_tpid,
			   sizeof(flow->l2_mask.inner_vlan_tpid))) {
		FUNC3(bp->dev, "Wildcard match unsupported for VLAN TPID\n");
		return false;
	}

	/* Currently Ethertype must be set */
	if (!FUNC1(&flow->l2_mask.ether_type,
			   sizeof(flow->l2_mask.ether_type))) {
		FUNC3(bp->dev, "Wildcard match unsupported for Ethertype\n");
		return false;
	}

	return true;
}