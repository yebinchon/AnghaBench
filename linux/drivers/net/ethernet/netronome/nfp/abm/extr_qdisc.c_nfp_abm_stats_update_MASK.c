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
typedef  scalar_t__ u64 ;
struct nfp_abm_link {scalar_t__ last_stats_update; } ;

/* Variables and functions */
 scalar_t__ NFP_ABM_STATS_REFRESH_IVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_abm_link*,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct nfp_abm_link *alink)
{
	u64 now;

	/* Limit the frequency of updates - stats of non-leaf qdiscs are a sum
	 * of all their leafs, so we would read the same stat multiple times
	 * for every dump.
	 */
	now = FUNC1();
	if (now - alink->last_stats_update < NFP_ABM_STATS_REFRESH_IVAL)
		return;

	FUNC0(alink, now);
}