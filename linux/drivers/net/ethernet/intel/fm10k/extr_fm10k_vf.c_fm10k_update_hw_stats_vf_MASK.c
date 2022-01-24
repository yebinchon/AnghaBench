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
struct fm10k_hw_stats {int /*<<< orphan*/  q; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_queues; } ;
struct fm10k_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fm10k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct fm10k_hw *hw,
				     struct fm10k_hw_stats *stats)
{
	FUNC0(hw, stats->q, 0, hw->mac.max_queues);
}