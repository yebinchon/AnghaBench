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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int (* describe_stats ) (struct efx_nic*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EFX_ETHTOOL_SW_STAT_COUNT ; 
 int ETH_GSTRING_LEN ; 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int FUNC0 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 TYPE_2__* efx_sw_stat_desc ; 
 struct efx_nic* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct efx_nic*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *net_dev,
				    u32 string_set, u8 *strings)
{
	struct efx_nic *efx = FUNC3(net_dev);
	int i;

	switch (string_set) {
	case ETH_SS_STATS:
		strings += (efx->type->describe_stats(efx, strings) *
			    ETH_GSTRING_LEN);
		for (i = 0; i < EFX_ETHTOOL_SW_STAT_COUNT; i++)
			FUNC4(strings + i * ETH_GSTRING_LEN,
				efx_sw_stat_desc[i].name, ETH_GSTRING_LEN);
		strings += EFX_ETHTOOL_SW_STAT_COUNT * ETH_GSTRING_LEN;
		strings += (FUNC0(efx, strings) *
			    ETH_GSTRING_LEN);
		FUNC2(efx, strings);
		break;
	case ETH_SS_TEST:
		FUNC1(efx, NULL, strings, NULL);
		break;
	default:
		/* No other string sets */
		break;
	}
}