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
struct phylink_link_state {scalar_t__ interface; } ;
struct phylink_config {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct mvpp2_port {scalar_t__ phy_interface; scalar_t__ gop_id; int flags; TYPE_1__* priv; int /*<<< orphan*/  comphy; } ;
struct TYPE_2__ {scalar_t__ hw_version; } ;

/* Variables and functions */
 scalar_t__ MVPP21 ; 
 scalar_t__ MVPP22 ; 
 int MVPP2_F_LOOPBACK ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*,unsigned int,struct phylink_link_state const*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_port*,struct phylink_link_state const*) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_port*,unsigned int,struct phylink_link_state const*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct mvpp2_port* FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct phylink_config *config, unsigned int mode,
			     const struct phylink_link_state *state)
{
	struct net_device *dev = FUNC14(config->dev);
	struct mvpp2_port *port = FUNC10(dev);
	bool change_interface = port->phy_interface != state->interface;

	/* Check for invalid configuration */
	if (FUNC4(state->interface) && port->gop_id != 0) {
		FUNC9(dev, "Invalid mode on %s\n", dev->name);
		return;
	}

	/* Make sure the port is disabled when reconfiguring the mode */
	FUNC5(port);

	if (port->priv->hw_version == MVPP22 && change_interface) {
		FUNC0(port);

		port->phy_interface = state->interface;

		/* Reconfigure the serdes lanes */
		FUNC13(port->comphy);
		FUNC2(port);
	}

	/* mac (re)configuration */
	if (FUNC4(state->interface))
		FUNC8(port, mode, state);
	else if (FUNC12(state->interface) ||
		 FUNC11(state->interface) ||
		 state->interface == PHY_INTERFACE_MODE_SGMII)
		FUNC3(port, mode, state);

	if (port->priv->hw_version == MVPP21 && port->flags & MVPP2_F_LOOPBACK)
		FUNC7(port, state);

	if (port->priv->hw_version == MVPP22 && change_interface)
		FUNC1(port);

	FUNC6(port);
}