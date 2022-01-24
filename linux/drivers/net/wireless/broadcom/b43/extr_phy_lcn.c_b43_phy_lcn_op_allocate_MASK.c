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
struct TYPE_2__ {struct b43_phy_lcn* lcn; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lcn {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct b43_phy_lcn* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct b43_wldev *dev)
{
	struct b43_phy_lcn *phy_lcn;

	phy_lcn = FUNC0(sizeof(*phy_lcn), GFP_KERNEL);
	if (!phy_lcn)
		return -ENOMEM;
	dev->phy.lcn = phy_lcn;

	return 0;
}