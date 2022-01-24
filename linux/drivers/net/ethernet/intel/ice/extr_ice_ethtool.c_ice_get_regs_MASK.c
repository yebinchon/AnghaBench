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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {struct ice_hw hw; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct ethtool_regs {int version; } ;
struct TYPE_2__ {struct ice_pf* back; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ice_regs_dump_list ; 
 struct ice_netdev_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct net_device *netdev, struct ethtool_regs *regs, void *p)
{
	struct ice_netdev_priv *np = FUNC1(netdev);
	struct ice_pf *pf = np->vsi->back;
	struct ice_hw *hw = &pf->hw;
	u32 *regs_buf = (u32 *)p;
	int i;

	regs->version = 1;

	for (i = 0; i < FUNC0(ice_regs_dump_list); ++i)
		regs_buf[i] = FUNC2(hw, ice_regs_dump_list[i]);
}