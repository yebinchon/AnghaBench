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
typedef  void* u32 ;
struct TYPE_2__ {scalar_t__ duplex; int link; int an_complete; int /*<<< orphan*/  advertising; void* speed; int /*<<< orphan*/  pause; } ;
struct phylink {TYPE_1__ link_config; int /*<<< orphan*/  supported; struct gpio_desc* link_gpio; } ;
struct phy_setting {int /*<<< orphan*/  bit; } ;
struct gpio_desc {int dummy; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int FUNC0 (void**) ; 
 int /*<<< orphan*/  Asym_Pause ; 
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ DUPLEX_HALF ; 
 int EINVAL ; 
 int EPROBE_DEFER ; 
 struct gpio_desc* FUNC1 (int) ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  MII ; 
 int /*<<< orphan*/  MLO_PAUSE_ASYM ; 
 int /*<<< orphan*/  MLO_PAUSE_SYM ; 
 int /*<<< orphan*/  Pause ; 
 void* SPEED_1000 ; 
 int /*<<< orphan*/  __ETHTOOL_LINK_MODE_MASK_NBITS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fwnode_handle* FUNC5 (struct fwnode_handle*,char*) ; 
 struct gpio_desc* FUNC6 (struct fwnode_handle*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct fwnode_handle*) ; 
 scalar_t__ FUNC8 (struct fwnode_handle*,char*) ; 
 int FUNC9 (struct fwnode_handle*,char*,void**) ; 
 int FUNC10 (struct fwnode_handle*,char*,void**,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct phy_setting* FUNC14 (void*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct phylink*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct phylink*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (struct phylink*,char*,char*,...) ; 

__attribute__((used)) static int FUNC19(struct phylink *pl,
				   struct fwnode_handle *fwnode)
{
	struct fwnode_handle *fixed_node;
	const struct phy_setting *s;
	struct gpio_desc *desc;
	u32 speed;
	int ret;

	fixed_node = FUNC5(fwnode, "fixed-link");
	if (fixed_node) {
		ret = FUNC9(fixed_node, "speed", &speed);

		pl->link_config.speed = speed;
		pl->link_config.duplex = DUPLEX_HALF;

		if (FUNC8(fixed_node, "full-duplex"))
			pl->link_config.duplex = DUPLEX_FULL;

		/* We treat the "pause" and "asym-pause" terminology as
		 * defining the link partner's ability. */
		if (FUNC8(fixed_node, "pause"))
			pl->link_config.pause |= MLO_PAUSE_SYM;
		if (FUNC8(fixed_node, "asym-pause"))
			pl->link_config.pause |= MLO_PAUSE_ASYM;

		if (ret == 0) {
			desc = FUNC6(fixed_node, "link-gpios",
						      0, GPIOD_IN, "?");

			if (!FUNC2(desc))
				pl->link_gpio = desc;
			else if (desc == FUNC1(-EPROBE_DEFER))
				ret = -EPROBE_DEFER;
		}
		FUNC7(fixed_node);

		if (ret)
			return ret;
	} else {
		u32 prop[5];

		ret = FUNC10(fwnode, "fixed-link",
						     NULL, 0);
		if (ret != FUNC0(prop)) {
			FUNC15(pl, "broken fixed-link?\n");
			return -EINVAL;
		}

		ret = FUNC10(fwnode, "fixed-link",
						     prop, FUNC0(prop));
		if (!ret) {
			pl->link_config.duplex = prop[1] ?
						DUPLEX_FULL : DUPLEX_HALF;
			pl->link_config.speed = prop[2];
			if (prop[3])
				pl->link_config.pause |= MLO_PAUSE_SYM;
			if (prop[4])
				pl->link_config.pause |= MLO_PAUSE_ASYM;
		}
	}

	if (pl->link_config.speed > SPEED_1000 &&
	    pl->link_config.duplex != DUPLEX_FULL)
		FUNC18(pl, "fixed link specifies half duplex for %dMbps link?\n",
			     pl->link_config.speed);

	FUNC4(pl->supported, __ETHTOOL_LINK_MODE_MASK_NBITS);
	FUNC12(pl->link_config.advertising, pl->supported);
	FUNC17(pl, pl->supported, &pl->link_config);

	s = FUNC14(pl->link_config.speed, pl->link_config.duplex,
			       pl->supported, true);
	FUNC13(pl->supported);
	FUNC16(pl->supported, MII);
	FUNC16(pl->supported, Pause);
	FUNC16(pl->supported, Asym_Pause);
	if (s) {
		FUNC3(s->bit, pl->supported);
	} else {
		FUNC18(pl, "fixed link %s duplex %dMbps not recognised\n",
			     pl->link_config.duplex == DUPLEX_FULL ? "full" : "half",
			     pl->link_config.speed);
	}

	FUNC11(pl->link_config.advertising, pl->link_config.advertising,
		     pl->supported);

	pl->link_config.link = 1;
	pl->link_config.an_complete = 1;

	return 0;
}