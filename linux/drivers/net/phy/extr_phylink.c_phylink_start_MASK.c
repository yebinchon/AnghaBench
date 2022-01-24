#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  interface; } ;
struct phylink {scalar_t__ link_an_mode; int link_irq; scalar_t__ sfp_bus; scalar_t__ phydev; int /*<<< orphan*/  link_poll; scalar_t__ get_fixed_state; scalar_t__ link_gpio; int /*<<< orphan*/  phylink_disable_state; TYPE_1__ link_config; scalar_t__ netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ HZ ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ MLO_AN_FIXED ; 
 int /*<<< orphan*/  PHYLINK_DISABLE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct phylink*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phylink_link_handler ; 
 int /*<<< orphan*/  FUNC9 (struct phylink*) ; 
 int /*<<< orphan*/  FUNC10 (struct phylink*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct phylink*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct phylink*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int,char*,struct phylink*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

void FUNC15(struct phylink *pl)
{
	FUNC0();

	FUNC8(pl, "configuring for %s/%s link mode\n",
		     FUNC7(pl->link_an_mode),
		     FUNC5(pl->link_config.interface));

	/* Always set the carrier off */
	if (pl->netdev)
		FUNC4(pl->netdev);

	/* Apply the link configuration to the MAC when starting. This allows
	 * a fixed-link to start with the correct parameters, and also
	 * ensures that we set the appropriate advertisement for Serdes links.
	 */
	FUNC11(pl, &pl->link_config);
	FUNC10(pl, &pl->link_config);

	/* Restart autonegotiation if using 802.3z to ensure that the link
	 * parameters are properly negotiated.  This is necessary for DSA
	 * switches using 802.3z negotiation to ensure they see our modes.
	 */
	FUNC9(pl);

	FUNC1(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state);
	FUNC12(pl);

	if (pl->link_an_mode == MLO_AN_FIXED && pl->link_gpio) {
		int irq = FUNC2(pl->link_gpio);

		if (irq > 0) {
			if (!FUNC13(irq, phylink_link_handler,
					 IRQF_TRIGGER_RISING |
					 IRQF_TRIGGER_FALLING,
					 "netdev link", pl))
				pl->link_irq = irq;
			else
				irq = 0;
		}
		if (irq <= 0)
			FUNC3(&pl->link_poll, jiffies + HZ);
	}
	if (pl->link_an_mode == MLO_AN_FIXED && pl->get_fixed_state)
		FUNC3(&pl->link_poll, jiffies + HZ);
	if (pl->phydev)
		FUNC6(pl->phydev);
	if (pl->sfp_bus)
		FUNC14(pl->sfp_bus);
}