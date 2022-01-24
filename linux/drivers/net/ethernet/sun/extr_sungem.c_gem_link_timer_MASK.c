#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  advertising; TYPE_2__* def; int /*<<< orphan*/  speed; } ;
struct gem {scalar_t__ phy_type; scalar_t__ lstate; int timer_ticks; int /*<<< orphan*/  link_timer; TYPE_3__ phy_mii; int /*<<< orphan*/  last_forced_speed; scalar_t__ want_autoneg; scalar_t__ regs; scalar_t__ reset_task_pending; struct net_device* dev; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* setup_aneg ) (TYPE_3__*,int /*<<< orphan*/ ) ;scalar_t__ (* poll_link ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ PCS_MIISTAT ; 
 int PCS_MIISTAT_LS ; 
 scalar_t__ FUNC0 (struct gem*) ; 
 struct gem* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gem*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct gem*) ; 
 int /*<<< orphan*/  FUNC4 (struct gem*) ; 
 scalar_t__ FUNC5 (struct gem*) ; 
 struct gem* gp ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ link_down ; 
 scalar_t__ link_force_ret ; 
 scalar_t__ link_force_try ; 
 int /*<<< orphan*/  link_timer ; 
 scalar_t__ link_up ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct gem*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 scalar_t__ FUNC11 (struct gem*) ; 
 scalar_t__ phy_serdes ; 
 scalar_t__ phy_serialink ; 
 int FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct timer_list *t)
{
	struct gem *gp = FUNC1(gp, t, link_timer);
	struct net_device *dev = gp->dev;
	int restart_aneg = 0;

	/* There's no point doing anything if we're going to be reset */
	if (gp->reset_task_pending)
		return;

	if (gp->phy_type == phy_serialink ||
	    gp->phy_type == phy_serdes) {
		u32 val = FUNC12(gp->regs + PCS_MIISTAT);

		if (!(val & PCS_MIISTAT_LS))
			val = FUNC12(gp->regs + PCS_MIISTAT);

		if ((val & PCS_MIISTAT_LS) != 0) {
			if (gp->lstate == link_up)
				goto restart;

			gp->lstate = link_up;
			FUNC9(dev);
			(void)FUNC5(gp);
		}
		goto restart;
	}
	if (FUNC0(gp) && gp->phy_mii.def->ops->poll_link(&gp->phy_mii)) {
		/* Ok, here we got a link. If we had it due to a forced
		 * fallback, and we were configured for autoneg, we do
		 * retry a short autoneg pass. If you know your hub is
		 * broken, use ethtool ;)
		 */
		if (gp->lstate == link_force_try && gp->want_autoneg) {
			gp->lstate = link_force_ret;
			gp->last_forced_speed = gp->phy_mii.speed;
			gp->timer_ticks = 5;
			if (FUNC11(gp))
				FUNC7(dev,
					    "Got link after fallback, retrying autoneg once...\n");
			gp->phy_mii.def->ops->setup_aneg(&gp->phy_mii, gp->phy_mii.advertising);
		} else if (gp->lstate != link_up) {
			gp->lstate = link_up;
			FUNC9(dev);
			if (FUNC5(gp))
				restart_aneg = 1;
		}
	} else {
		/* If the link was previously up, we restart the
		 * whole process
		 */
		if (gp->lstate == link_up) {
			gp->lstate = link_down;
			FUNC10(gp, link, dev, "Link down\n");
			FUNC8(dev);
			FUNC4(gp);
			/* The reset task will restart the timer */
			return;
		} else if (++gp->timer_ticks > 10) {
			if (FUNC0(gp))
				restart_aneg = FUNC3(gp);
			else
				restart_aneg = 1;
		}
	}
	if (restart_aneg) {
		FUNC2(gp, NULL);
		return;
	}
restart:
	FUNC6(&gp->link_timer, jiffies + ((12 * HZ) / 10));
}