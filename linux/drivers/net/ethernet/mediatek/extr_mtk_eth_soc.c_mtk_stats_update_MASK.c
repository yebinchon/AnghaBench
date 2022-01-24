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
struct mtk_eth {TYPE_2__** mac; } ;
struct TYPE_4__ {TYPE_1__* hw_stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  stats_lock; } ;

/* Variables and functions */
 int MTK_MAC_COUNT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mtk_eth *eth)
{
	int i;

	for (i = 0; i < MTK_MAC_COUNT; i++) {
		if (!eth->mac[i] || !eth->mac[i]->hw_stats)
			continue;
		if (FUNC1(&eth->mac[i]->hw_stats->stats_lock)) {
			FUNC0(eth->mac[i]);
			FUNC2(&eth->mac[i]->hw_stats->stats_lock);
		}
	}
}