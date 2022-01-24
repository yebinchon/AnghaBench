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
typedef  int u32 ;
struct tegra_mc_la {int mask; int shift; int def; int /*<<< orphan*/  reg; } ;
struct tegra_mc {TYPE_2__* soc; int /*<<< orphan*/  clk; scalar_t__ tick; } ;
struct TYPE_4__ {unsigned int num_clients; TYPE_1__* clients; } ;
struct TYPE_3__ {struct tegra_mc_la la; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC_EMEM_ARB_CFG ; 
 int FUNC0 (unsigned long long) ; 
 int MC_EMEM_ARB_CFG_CYCLES_PER_UPDATE_MASK ; 
 int /*<<< orphan*/  MC_TIMING_CONTROL ; 
 int MC_TIMING_UPDATE ; 
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tegra_mc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_mc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tegra_mc *mc)
{
	unsigned long long tick;
	unsigned int i;
	u32 value;

	/* compute the number of MC clock cycles per tick */
	tick = (unsigned long long)mc->tick * FUNC1(mc->clk);
	FUNC2(tick, NSEC_PER_SEC);

	value = FUNC3(mc, MC_EMEM_ARB_CFG);
	value &= ~MC_EMEM_ARB_CFG_CYCLES_PER_UPDATE_MASK;
	value |= FUNC0(tick);
	FUNC4(mc, value, MC_EMEM_ARB_CFG);

	/* write latency allowance defaults */
	for (i = 0; i < mc->soc->num_clients; i++) {
		const struct tegra_mc_la *la = &mc->soc->clients[i].la;
		u32 value;

		value = FUNC3(mc, la->reg);
		value &= ~(la->mask << la->shift);
		value |= (la->def & la->mask) << la->shift;
		FUNC4(mc, value, la->reg);
	}

	/* latch new values */
	FUNC4(mc, MC_TIMING_UPDATE, MC_TIMING_CONTROL);

	return 0;
}