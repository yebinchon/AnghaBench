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
typedef  enum ethtool_report { ____Placeholder_ethtool_report } ethtool_report ;

/* Variables and functions */
 int MLX4_LINK_MODES_SZ ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  __ETHTOOL_LINK_MODE_MASK_NBITS ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * ptys2ethtool_map ; 

__attribute__((used)) static void FUNC3(unsigned long *link_modes,
					   u32 eth_proto,
					   enum ethtool_report report)
{
	int i;
	for (i = 0; i < MLX4_LINK_MODES_SZ; i++) {
		if (eth_proto & FUNC0(i))
			FUNC1(link_modes, link_modes,
				  FUNC2(&ptys2ethtool_map[i],
							 report),
				  __ETHTOOL_LINK_MODE_MASK_NBITS);
	}
}