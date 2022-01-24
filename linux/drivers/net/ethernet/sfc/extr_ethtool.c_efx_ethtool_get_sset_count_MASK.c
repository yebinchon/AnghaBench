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
struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* describe_stats ) (struct efx_nic*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EFX_ETHTOOL_SW_STAT_COUNT ; 
 int EINVAL ; 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int FUNC0 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct efx_nic*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *net_dev,
				      int string_set)
{
	struct efx_nic *efx = FUNC3(net_dev);

	switch (string_set) {
	case ETH_SS_STATS:
		return efx->type->describe_stats(efx, NULL) +
		       EFX_ETHTOOL_SW_STAT_COUNT +
		       FUNC0(efx, NULL) +
		       FUNC2(efx, NULL);
	case ETH_SS_TEST:
		return FUNC1(efx, NULL, NULL, NULL);
	default:
		return -EINVAL;
	}
}