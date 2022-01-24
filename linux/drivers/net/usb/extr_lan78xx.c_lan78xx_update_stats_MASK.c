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
typedef  scalar_t__ u32 ;
struct lan78xx_statstage {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  access_lock; int /*<<< orphan*/  curr_stat; int /*<<< orphan*/  rollover_max; int /*<<< orphan*/  rollover_count; } ;
struct lan78xx_net {int /*<<< orphan*/  intf; TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  lan78xx_stats ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lan78xx_net*,struct lan78xx_statstage*) ; 
 scalar_t__ FUNC1 (struct lan78xx_net*,struct lan78xx_statstage*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct lan78xx_net *dev)
{
	u32 *p, *count, *max;
	u64 *data;
	int i;
	struct lan78xx_statstage lan78xx_stats;

	if (FUNC4(dev->intf) < 0)
		return;

	p = (u32 *)&lan78xx_stats;
	count = (u32 *)&dev->stats.rollover_count;
	max = (u32 *)&dev->stats.rollover_max;
	data = (u64 *)&dev->stats.curr_stat;

	FUNC2(&dev->stats.access_lock);

	if (FUNC1(dev, &lan78xx_stats) > 0)
		FUNC0(dev, &lan78xx_stats);

	for (i = 0; i < (sizeof(lan78xx_stats) / (sizeof(u32))); i++)
		data[i] = (u64)p[i] + ((u64)count[i] * ((u64)max[i] + 1));

	FUNC3(&dev->stats.access_lock);

	FUNC5(dev->intf);
}