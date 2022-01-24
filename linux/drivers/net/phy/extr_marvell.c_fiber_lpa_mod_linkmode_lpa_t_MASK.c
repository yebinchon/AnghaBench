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
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Half_BIT ; 
 int LPA_FIBER_1000FULL ; 
 int LPA_FIBER_1000HALF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long*,int) ; 

__attribute__((used)) static void FUNC1(unsigned long *advertising, u32 lpa)
{
	FUNC0(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
			 advertising, lpa & LPA_FIBER_1000HALF);

	FUNC0(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
			 advertising, lpa & LPA_FIBER_1000FULL);
}