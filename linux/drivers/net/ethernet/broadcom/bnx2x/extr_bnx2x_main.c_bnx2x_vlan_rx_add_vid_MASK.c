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
struct net_device {int dummy; } ;
struct bnx2x_vlan_entry {int hw; int /*<<< orphan*/  link; int /*<<< orphan*/  vid; } ;
struct bnx2x {int /*<<< orphan*/  vlan_reg; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int) ; 
 struct bnx2x_vlan_entry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bnx2x* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, __be16 proto, u16 vid)
{
	struct bnx2x *bp = FUNC4(dev);
	struct bnx2x_vlan_entry *vlan;

	FUNC0(NETIF_MSG_IFUP, "Adding VLAN %d\n", vid);

	vlan = FUNC2(sizeof(*vlan), GFP_KERNEL);
	if (!vlan)
		return -ENOMEM;

	vlan->vid = vid;
	vlan->hw = false;
	FUNC3(&vlan->link, &bp->vlan_reg);

	if (FUNC5(dev))
		FUNC1(bp, true);

	return 0;
}