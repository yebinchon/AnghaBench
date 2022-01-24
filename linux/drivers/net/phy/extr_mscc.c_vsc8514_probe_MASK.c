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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct vsc8531_private {int nleds; int /*<<< orphan*/  stats; int /*<<< orphan*/  nstats; int /*<<< orphan*/  hw_stats; int /*<<< orphan*/  supp_led_modes; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct phy_device {TYPE_1__ mdio; struct vsc8531_private* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VSC8531_DUPLEX_COLLISION ; 
 int /*<<< orphan*/  VSC8531_LINK_1000_ACTIVITY ; 
 int /*<<< orphan*/  VSC8531_LINK_100_ACTIVITY ; 
 int /*<<< orphan*/  VSC8531_LINK_ACTIVITY ; 
 int /*<<< orphan*/  VSC85XX_SUPP_LED_MODES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct vsc8531_private* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vsc85xx_hw_stats ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev)
{
	struct vsc8531_private *vsc8531;
	u32 default_mode[4] = {VSC8531_LINK_1000_ACTIVITY,
	   VSC8531_LINK_100_ACTIVITY, VSC8531_LINK_ACTIVITY,
	   VSC8531_DUPLEX_COLLISION};

	vsc8531 = FUNC2(&phydev->mdio.dev, sizeof(*vsc8531), GFP_KERNEL);
	if (!vsc8531)
		return -ENOMEM;

	phydev->priv = vsc8531;

	vsc8531->nleds = 4;
	vsc8531->supp_led_modes = VSC85XX_SUPP_LED_MODES;
	vsc8531->hw_stats = vsc85xx_hw_stats;
	vsc8531->nstats = FUNC0(vsc85xx_hw_stats);
	vsc8531->stats = FUNC1(&phydev->mdio.dev, vsc8531->nstats,
				      sizeof(u64), GFP_KERNEL);
	if (!vsc8531->stats)
		return -ENOMEM;

	return FUNC3(phydev, default_mode);
}