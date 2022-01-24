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
struct fm10k_hw_stats {int /*<<< orphan*/  q; int /*<<< orphan*/  nodesc_drop; int /*<<< orphan*/  loopback_drop; int /*<<< orphan*/  vlan_drop; int /*<<< orphan*/  xec; int /*<<< orphan*/  um; int /*<<< orphan*/  ca; int /*<<< orphan*/  ur; int /*<<< orphan*/  timeout; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_queues; } ;
struct fm10k_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_hw*,struct fm10k_hw_stats*) ; 

__attribute__((used)) static void FUNC3(struct fm10k_hw *hw,
				     struct fm10k_hw_stats *stats)
{
	/* Unbind Global Statistics */
	FUNC0(&stats->timeout);
	FUNC0(&stats->ur);
	FUNC0(&stats->ca);
	FUNC0(&stats->um);
	FUNC0(&stats->xec);
	FUNC0(&stats->vlan_drop);
	FUNC0(&stats->loopback_drop);
	FUNC0(&stats->nodesc_drop);

	/* Unbind Queue Statistics */
	FUNC1(stats->q, 0, hw->mac.max_queues);

	/* Reinitialize bases for all stats */
	FUNC2(hw, stats);
}