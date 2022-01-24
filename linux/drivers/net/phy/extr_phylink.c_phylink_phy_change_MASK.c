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
struct TYPE_2__ {int link; int /*<<< orphan*/  interface; int /*<<< orphan*/  pause; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;
struct phylink {int /*<<< orphan*/  state_mutex; TYPE_1__ phy_state; } ;
struct phy_device {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  interface; scalar_t__ asym_pause; scalar_t__ pause; struct phylink* phylink; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLO_PAUSE_ASYM ; 
 int /*<<< orphan*/  MLO_PAUSE_NONE ; 
 int /*<<< orphan*/  MLO_PAUSE_SYM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phylink*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct phylink*) ; 

__attribute__((used)) static void FUNC7(struct phy_device *phydev, bool up,
			       bool do_carrier)
{
	struct phylink *pl = phydev->phylink;

	FUNC0(&pl->state_mutex);
	pl->phy_state.speed = phydev->speed;
	pl->phy_state.duplex = phydev->duplex;
	pl->phy_state.pause = MLO_PAUSE_NONE;
	if (phydev->pause)
		pl->phy_state.pause |= MLO_PAUSE_SYM;
	if (phydev->asym_pause)
		pl->phy_state.pause |= MLO_PAUSE_ASYM;
	pl->phy_state.interface = phydev->interface;
	pl->phy_state.link = up;
	FUNC1(&pl->state_mutex);

	FUNC6(pl);

	FUNC5(pl, "phy link %s %s/%s/%s\n", up ? "up" : "down",
		    FUNC3(phydev->interface),
		    FUNC4(phydev->speed),
		    FUNC2(phydev->duplex));
}