#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct phylink_mac_ops {int dummy; } ;
struct phylink_config {scalar_t__ type; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int an_enabled; int /*<<< orphan*/  advertising; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  pause; scalar_t__ interface; } ;
struct TYPE_3__ {scalar_t__ interface; } ;
struct phylink {scalar_t__ link_an_mode; TYPE_2__ link_config; int /*<<< orphan*/  supported; int /*<<< orphan*/  link_poll; int /*<<< orphan*/  phylink_disable_state; struct phylink_mac_ops const* ops; int /*<<< orphan*/  link_port; scalar_t__ link_interface; TYPE_1__ phy_state; int /*<<< orphan*/  dev; int /*<<< orphan*/  netdev; struct phylink_config* config; int /*<<< orphan*/  resolve; int /*<<< orphan*/  state_mutex; } ;
struct fwnode_handle {int dummy; } ;
typedef  scalar_t__ phy_interface_t ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_UNKNOWN ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct phylink* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ MLO_AN_FIXED ; 
 int /*<<< orphan*/  MLO_PAUSE_AN ; 
 scalar_t__ PHYLINK_DEV ; 
 int /*<<< orphan*/  PHYLINK_DISABLE_STOPPED ; 
 scalar_t__ PHYLINK_NETDEV ; 
 scalar_t__ PHY_INTERFACE_MODE_MOCA ; 
 int /*<<< orphan*/  PORT_BNC ; 
 int /*<<< orphan*/  PORT_MII ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 int /*<<< orphan*/  __ETHTOOL_LINK_MODE_MASK_NBITS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct phylink*) ; 
 struct phylink* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  phylink_fixed_poll ; 
 int FUNC8 (struct phylink*,struct fwnode_handle*) ; 
 int FUNC9 (struct phylink*,struct fwnode_handle*) ; 
 int FUNC10 (struct phylink*,struct fwnode_handle*) ; 
 int /*<<< orphan*/  phylink_resolve ; 
 int /*<<< orphan*/  FUNC11 (struct phylink*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

struct phylink *FUNC14(struct phylink_config *config,
			       struct fwnode_handle *fwnode,
			       phy_interface_t iface,
			       const struct phylink_mac_ops *ops)
{
	struct phylink *pl;
	int ret;

	pl = FUNC5(sizeof(*pl), GFP_KERNEL);
	if (!pl)
		return FUNC0(-ENOMEM);

	FUNC7(&pl->state_mutex);
	FUNC1(&pl->resolve, phylink_resolve);

	pl->config = config;
	if (config->type == PHYLINK_NETDEV) {
		pl->netdev = FUNC13(config->dev);
	} else if (config->type == PHYLINK_DEV) {
		pl->dev = config->dev;
	} else {
		FUNC4(pl);
		return FUNC0(-EINVAL);
	}

	pl->phy_state.interface = iface;
	pl->link_interface = iface;
	if (iface == PHY_INTERFACE_MODE_MOCA)
		pl->link_port = PORT_BNC;
	else
		pl->link_port = PORT_MII;
	pl->link_config.interface = iface;
	pl->link_config.pause = MLO_PAUSE_AN;
	pl->link_config.speed = SPEED_UNKNOWN;
	pl->link_config.duplex = DUPLEX_UNKNOWN;
	pl->link_config.an_enabled = true;
	pl->ops = ops;
	FUNC2(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state);
	FUNC12(&pl->link_poll, phylink_fixed_poll, 0);

	FUNC3(pl->supported, __ETHTOOL_LINK_MODE_MASK_NBITS);
	FUNC6(pl->link_config.advertising, pl->supported);
	FUNC11(pl, pl->supported, &pl->link_config);

	ret = FUNC9(pl, fwnode);
	if (ret < 0) {
		FUNC4(pl);
		return FUNC0(ret);
	}

	if (pl->link_an_mode == MLO_AN_FIXED) {
		ret = FUNC8(pl, fwnode);
		if (ret < 0) {
			FUNC4(pl);
			return FUNC0(ret);
		}
	}

	ret = FUNC10(pl, fwnode);
	if (ret < 0) {
		FUNC4(pl);
		return FUNC0(ret);
	}

	return pl;
}