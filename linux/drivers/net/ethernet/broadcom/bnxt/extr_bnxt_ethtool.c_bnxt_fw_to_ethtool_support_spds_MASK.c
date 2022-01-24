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
typedef  int /*<<< orphan*/  u16 ;
struct ethtool_link_ksettings {int dummy; } ;
struct bnxt_link_info {scalar_t__ support_auto_speeds; int /*<<< orphan*/  support_speeds; } ;

/* Variables and functions */
 int /*<<< orphan*/  Asym_Pause ; 
 int /*<<< orphan*/  Autoneg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ethtool_link_ksettings*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pause ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  supported ; 

__attribute__((used)) static void FUNC2(struct bnxt_link_info *link_info,
				struct ethtool_link_ksettings *lk_ksettings)
{
	u16 fw_speeds = link_info->support_speeds;

	FUNC0(fw_speeds, 0, lk_ksettings, supported);

	FUNC1(lk_ksettings, supported, Pause);
	FUNC1(lk_ksettings, supported,
					     Asym_Pause);

	if (link_info->support_auto_speeds)
		FUNC1(lk_ksettings, supported,
						     Autoneg);
}