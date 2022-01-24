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
struct phylink {scalar_t__ link_an_mode; int /*<<< orphan*/  netdev; scalar_t__ phydev; } ;
struct phy_device {int dummy; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ MLO_AN_FIXED ; 
 scalar_t__ MLO_AN_INBAND ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phylink*,struct phy_device*) ; 

__attribute__((used)) static int FUNC5(struct phylink *pl, struct phy_device *phy,
		phy_interface_t interface)
{
	int ret;

	if (FUNC0(pl->link_an_mode == MLO_AN_FIXED ||
		    (pl->link_an_mode == MLO_AN_INBAND &&
		     FUNC3(interface))))
		return -EINVAL;

	if (pl->phydev)
		return -EBUSY;

	ret = FUNC1(pl->netdev, phy, 0, interface);
	if (ret)
		return ret;

	ret = FUNC4(pl, phy);
	if (ret)
		FUNC2(phy);

	return ret;
}