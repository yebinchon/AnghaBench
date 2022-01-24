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

/* Variables and functions */
 int ADVERTISE_FIBER_1000FULL ; 
 int ADVERTISE_FIBER_1000HALF ; 
 int ADVERTISE_PAUSE_ASYM_FIBER ; 
 int ADVERTISE_PAUSE_FIBER ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Half_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Asym_Pause_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Pause_BIT ; 
 int LPA_PAUSE_ASYM_FIBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static inline u32 FUNC1(unsigned long *advertise)
{
	u32 result = 0;

	if (FUNC0(ETHTOOL_LINK_MODE_1000baseT_Half_BIT, advertise))
		result |= ADVERTISE_FIBER_1000HALF;
	if (FUNC0(ETHTOOL_LINK_MODE_1000baseT_Full_BIT, advertise))
		result |= ADVERTISE_FIBER_1000FULL;

	if (FUNC0(ETHTOOL_LINK_MODE_Asym_Pause_BIT, advertise) &&
	    FUNC0(ETHTOOL_LINK_MODE_Pause_BIT, advertise))
		result |= LPA_PAUSE_ASYM_FIBER;
	else if (FUNC0(ETHTOOL_LINK_MODE_Pause_BIT, advertise))
		result |= (ADVERTISE_PAUSE_FIBER
			   & (~ADVERTISE_PAUSE_ASYM_FIBER));

	return result;
}