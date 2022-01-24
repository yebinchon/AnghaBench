#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  count; } ;
struct fm10k_hw_stats {int stats_idx; int /*<<< orphan*/  q; TYPE_2__ nodesc_drop; TYPE_2__ loopback_drop; TYPE_2__ vlan_drop; TYPE_2__ xec; TYPE_2__ um; TYPE_2__ ca; TYPE_2__ ur; TYPE_2__ timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_queues; } ;
struct fm10k_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_STATS_CA ; 
 int /*<<< orphan*/  FM10K_STATS_LOOPBACK_DROP ; 
 int /*<<< orphan*/  FM10K_STATS_NODESC_DROP ; 
 int /*<<< orphan*/  FM10K_STATS_TIMEOUT ; 
 int /*<<< orphan*/  FM10K_STATS_UM ; 
 int /*<<< orphan*/  FM10K_STATS_UR ; 
 int /*<<< orphan*/  FM10K_STATS_VLAN_DROP ; 
 int /*<<< orphan*/  FM10K_STATS_XEC ; 
 int FM10K_STAT_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FM10K_TXQCTL_ID_MASK ; 
 int FUNC1 (struct fm10k_hw*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fm10k_hw *hw,
				     struct fm10k_hw_stats *stats)
{
	u32 timeout, ur, ca, um, xec, vlan_drop, loopback_drop, nodesc_drop;
	u32 id, id_prev;

	/* Use Tx queue 0 as a canary to detect a reset */
	id = FUNC2(hw, FUNC0(0));

	/* Read Global Statistics */
	do {
		timeout = FUNC1(hw, FM10K_STATS_TIMEOUT,
						  &stats->timeout);
		ur = FUNC1(hw, FM10K_STATS_UR, &stats->ur);
		ca = FUNC1(hw, FM10K_STATS_CA, &stats->ca);
		um = FUNC1(hw, FM10K_STATS_UM, &stats->um);
		xec = FUNC1(hw, FM10K_STATS_XEC, &stats->xec);
		vlan_drop = FUNC1(hw, FM10K_STATS_VLAN_DROP,
						    &stats->vlan_drop);
		loopback_drop =
			FUNC1(hw,
						FM10K_STATS_LOOPBACK_DROP,
						&stats->loopback_drop);
		nodesc_drop = FUNC1(hw,
						      FM10K_STATS_NODESC_DROP,
						      &stats->nodesc_drop);

		/* if value has not changed then we have consistent data */
		id_prev = id;
		id = FUNC2(hw, FUNC0(0));
	} while ((id ^ id_prev) & FM10K_TXQCTL_ID_MASK);

	/* drop non-ID bits and set VALID ID bit */
	id &= FM10K_TXQCTL_ID_MASK;
	id |= FM10K_STAT_VALID;

	/* Update Global Statistics */
	if (stats->stats_idx == id) {
		stats->timeout.count += timeout;
		stats->ur.count += ur;
		stats->ca.count += ca;
		stats->um.count += um;
		stats->xec.count += xec;
		stats->vlan_drop.count += vlan_drop;
		stats->loopback_drop.count += loopback_drop;
		stats->nodesc_drop.count += nodesc_drop;
	}

	/* Update bases and record current PF id */
	FUNC3(&stats->timeout, timeout);
	FUNC3(&stats->ur, ur);
	FUNC3(&stats->ca, ca);
	FUNC3(&stats->um, um);
	FUNC3(&stats->xec, xec);
	FUNC3(&stats->vlan_drop, vlan_drop);
	FUNC3(&stats->loopback_drop, loopback_drop);
	FUNC3(&stats->nodesc_drop, nodesc_drop);
	stats->stats_idx = id;

	/* Update Queue Statistics */
	FUNC4(hw, stats->q, 0, hw->mac.max_queues);
}