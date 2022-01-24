#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct phylink_link_state {int /*<<< orphan*/  advertising; int /*<<< orphan*/  interface; } ;
struct TYPE_6__ {int /*<<< orphan*/  advertising; int /*<<< orphan*/  interface; } ;
struct phylink {int /*<<< orphan*/  supported; int /*<<< orphan*/  state_mutex; TYPE_3__ link_config; struct phy_device* phydev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct phy_device {int /*<<< orphan*/  advertising; int /*<<< orphan*/  lock; TYPE_2__* drv; TYPE_1__ mdio; int /*<<< orphan*/  phy_link_change; struct phylink* phylink; int /*<<< orphan*/  supported; } ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  Asym_Pause ; 
 int /*<<< orphan*/  Pause ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __ETHTOOL_LINK_MODE_MASK_NBITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phylink_link_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct phylink*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct phylink*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phylink_phy_change ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct phylink*,int /*<<< orphan*/ ,struct phylink_link_state*) ; 
 int /*<<< orphan*/  supported ; 

__attribute__((used)) static int FUNC13(struct phylink *pl, struct phy_device *phy)
{
	struct phylink_link_state config;
	FUNC0(supported);
	int ret;

	FUNC3(&config, 0, sizeof(config));
	FUNC2(supported, phy->supported);
	FUNC2(config.advertising, phy->advertising);
	config.interface = pl->link_config.interface;

	/*
	 * This is the new way of dealing with flow control for PHYs,
	 * as described by Timur Tabi in commit 529ed1275263 ("net: phy:
	 * phy drivers should not set SUPPORTED_[Asym_]Pause") except
	 * using our validate call to the MAC, we rely upon the MAC
	 * clearing the bits from both supported and advertising fields.
	 */
	if (FUNC11(supported, Pause))
		FUNC10(config.advertising, Pause);
	if (FUNC11(supported, Asym_Pause))
		FUNC10(config.advertising, Asym_Pause);

	ret = FUNC12(pl, supported, &config);
	if (ret)
		return ret;

	phy->phylink = pl;
	phy->phy_link_change = phylink_phy_change;

	FUNC9(pl,
		     "PHY [%s] driver [%s]\n", FUNC1(&phy->mdio.dev),
		     phy->drv->name);

	FUNC4(&phy->lock);
	FUNC4(&pl->state_mutex);
	pl->phydev = phy;
	FUNC2(pl->supported, supported);
	FUNC2(pl->link_config.advertising, config.advertising);

	/* Restrict the phy advertisement according to the MAC support. */
	FUNC2(phy->advertising, config.advertising);
	FUNC5(&pl->state_mutex);
	FUNC5(&phy->lock);

	FUNC8(pl,
		    "phy: setting supported %*pb advertising %*pb\n",
		    __ETHTOOL_LINK_MODE_MASK_NBITS, pl->supported,
		    __ETHTOOL_LINK_MODE_MASK_NBITS, phy->advertising);

	if (FUNC6(phy))
		FUNC7(phy);

	return 0;
}