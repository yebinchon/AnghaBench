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
struct phylink_link_state {int pause; } ;
struct phylink {int link_an_mode; int /*<<< orphan*/  netdev; int /*<<< orphan*/  phylink_disable_state; int /*<<< orphan*/  supported; struct phylink_link_state link_config; } ;
struct ethtool_pauseparam {scalar_t__ rx_pause; scalar_t__ tx_pause; scalar_t__ autoneg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  Asym_Pause ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  MLO_AN_FIXED 130 
#define  MLO_AN_INBAND 129 
#define  MLO_AN_PHY 128 
 int MLO_PAUSE_AN ; 
 int MLO_PAUSE_RX ; 
 int MLO_PAUSE_TX ; 
 int MLO_PAUSE_TXRX_MASK ; 
 int /*<<< orphan*/  PHYLINK_DISABLE_STOPPED ; 
 int /*<<< orphan*/  Pause ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phylink*) ; 
 int /*<<< orphan*/  FUNC3 (struct phylink*,struct phylink_link_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct phylink*,struct phylink_link_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct phylink*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct phylink *pl,
				   struct ethtool_pauseparam *pause)
{
	struct phylink_link_state *config = &pl->link_config;

	FUNC0();

	if (!FUNC6(pl->supported, Pause) &&
	    !FUNC6(pl->supported, Asym_Pause))
		return -EOPNOTSUPP;

	if (!FUNC6(pl->supported, Asym_Pause) &&
	    !pause->autoneg && pause->rx_pause != pause->tx_pause)
		return -EINVAL;

	config->pause &= ~(MLO_PAUSE_AN | MLO_PAUSE_TXRX_MASK);

	if (pause->autoneg)
		config->pause |= MLO_PAUSE_AN;
	if (pause->rx_pause)
		config->pause |= MLO_PAUSE_RX;
	if (pause->tx_pause)
		config->pause |= MLO_PAUSE_TX;

	if (!FUNC7(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state)) {
		switch (pl->link_an_mode) {
		case MLO_AN_PHY:
			/* Silently mark the carrier down, and then trigger a resolve */
			if (pl->netdev)
				FUNC1(pl->netdev);
			FUNC5(pl);
			break;

		case MLO_AN_FIXED:
			/* Should we allow fixed links to change against the config? */
			FUNC4(pl, config);
			FUNC3(pl, config);
			break;

		case MLO_AN_INBAND:
			FUNC3(pl, config);
			FUNC2(pl);
			break;
		}
	}

	return 0;
}