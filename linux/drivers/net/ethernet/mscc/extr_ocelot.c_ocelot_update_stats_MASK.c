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
typedef  int u32 ;
struct ocelot {int num_phys_ports; int num_stats; int* stats; int /*<<< orphan*/  stats_lock; TYPE_1__* stats_layout; } ;
struct TYPE_2__ {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_COUNT_RX_OCTETS ; 
 int /*<<< orphan*/  SYS_STAT_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int U32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ocelot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocelot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ocelot *ocelot)
{
	int i, j;

	FUNC1(&ocelot->stats_lock);

	for (i = 0; i < ocelot->num_phys_ports; i++) {
		/* Configure the port to read the stats from */
		FUNC4(ocelot, FUNC0(i), SYS_STAT_CFG);

		for (j = 0; j < ocelot->num_stats; j++) {
			u32 val;
			unsigned int idx = i * ocelot->num_stats + j;

			val = FUNC3(ocelot, SYS_COUNT_RX_OCTETS,
					      ocelot->stats_layout[j].offset);

			if (val < (ocelot->stats[idx] & U32_MAX))
				ocelot->stats[idx] += (u64)1 << 32;

			ocelot->stats[idx] = (ocelot->stats[idx] &
					      ~(u64)U32_MAX) + val;
		}
	}

	FUNC2(&ocelot->stats_lock);
}