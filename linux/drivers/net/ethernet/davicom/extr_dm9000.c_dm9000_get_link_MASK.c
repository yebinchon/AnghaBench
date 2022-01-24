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
struct net_device {int dummy; } ;
struct board_info {int flags; int /*<<< orphan*/  mii; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM9000_NSR ; 
 int DM9000_PLATF_EXT_PHY ; 
 int NSR_LINKST ; 
 int FUNC0 (struct board_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct board_info* FUNC2 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC3(struct net_device *dev)
{
	struct board_info *dm = FUNC2(dev);
	u32 ret;

	if (dm->flags & DM9000_PLATF_EXT_PHY)
		ret = FUNC1(&dm->mii);
	else
		ret = FUNC0(dm, DM9000_NSR) & NSR_LINKST ? 1 : 0;

	return ret;
}