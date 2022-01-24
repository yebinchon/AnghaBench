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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct ixgb_adapter {int /*<<< orphan*/  active_vlans; int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VFTA ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 struct ixgb_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *netdev, __be16 proto, u16 vid)
{
	struct ixgb_adapter *adapter = FUNC3(netdev);
	u32 vfta, index;

	/* remove VID from filter table */

	index = (vid >> 5) & 0x7F;
	vfta = FUNC0(&adapter->hw, VFTA, index);
	vfta &= ~(1 << (vid & 0x1F));
	FUNC2(&adapter->hw, index, vfta);
	FUNC1(vid, adapter->active_vlans);

	return 0;
}