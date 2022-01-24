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
typedef  int /*<<< orphan*/  u64 ;
struct rtnl_link_stats64 {int dummy; } ;
struct efx_nic {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct efx_nic*) ; 
 size_t FUNC1 (struct efx_nic*,int /*<<< orphan*/ *,struct rtnl_link_stats64*) ; 

__attribute__((used)) static size_t FUNC2(struct efx_nic *efx, u64 *full_stats,
				       struct rtnl_link_stats64 *core_stats)
{
	if (FUNC0(efx))
		return 0;

	return FUNC1(efx, full_stats, core_stats);
}