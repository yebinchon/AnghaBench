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
struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int dummy; } ;
struct ef4_nic {int /*<<< orphan*/  stats_lock; TYPE_1__* type; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* update_stats ) (struct ef4_nic*,int /*<<< orphan*/ *,struct rtnl_link_stats64*) ;} ;

/* Variables and functions */
 struct ef4_nic* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ *,struct rtnl_link_stats64*) ; 

__attribute__((used)) static void FUNC4(struct net_device *net_dev,
			  struct rtnl_link_stats64 *stats)
{
	struct ef4_nic *efx = FUNC0(net_dev);

	FUNC1(&efx->stats_lock);
	efx->type->update_stats(efx, NULL, stats);
	FUNC2(&efx->stats_lock);
}