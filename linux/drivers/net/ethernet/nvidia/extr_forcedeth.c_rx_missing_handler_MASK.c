#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct fe_priv {int /*<<< orphan*/  swstats_rx_syncp; } ;

/* Variables and functions */
 int NV_RX_MISSEDFRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stat_rx_missed_errors ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(u32 flags, struct fe_priv *np)
{
	if (flags & NV_RX_MISSEDFRAME) {
		FUNC1(&np->swstats_rx_syncp);
		FUNC0(stat_rx_missed_errors);
		FUNC2(&np->swstats_rx_syncp);
	}
}