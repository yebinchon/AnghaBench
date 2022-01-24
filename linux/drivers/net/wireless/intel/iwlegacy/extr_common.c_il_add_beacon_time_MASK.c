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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int beacon_time_tsf_bits; } ;
struct il_priv {TYPE_1__ hw_params; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 scalar_t__ TIME_UNIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct il_priv*,int) ; 
 scalar_t__ FUNC2 (struct il_priv*,int) ; 

__le32
FUNC3(struct il_priv *il, u32 base, u32 addon,
		   u32 beacon_interval)
{
	u32 base_low = base & FUNC2(il,
						      il->hw_params.
						      beacon_time_tsf_bits);
	u32 addon_low = addon & FUNC2(il,
							il->hw_params.
							beacon_time_tsf_bits);
	u32 interval = beacon_interval * TIME_UNIT;
	u32 res = (base & FUNC1(il,
						   il->hw_params.
						   beacon_time_tsf_bits)) +
	    (addon & FUNC1(il,
					      il->hw_params.
					      beacon_time_tsf_bits));

	if (base_low > addon_low)
		res += base_low - addon_low;
	else if (base_low < addon_low) {
		res += interval + base_low - addon_low;
		res += (1 << il->hw_params.beacon_time_tsf_bits);
	} else
		res += (1 << il->hw_params.beacon_time_tsf_bits);

	return FUNC0(res);
}