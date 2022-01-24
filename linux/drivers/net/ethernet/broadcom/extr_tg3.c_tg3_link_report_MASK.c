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
struct TYPE_2__ {scalar_t__ active_speed; scalar_t__ active_duplex; int active_flowctrl; } ;
struct tg3 {int phy_flags; int /*<<< orphan*/  dev; scalar_t__ link_up; scalar_t__ setlpicnt; TYPE_1__ link_config; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int FLOW_CTRL_RX ; 
 int FLOW_CTRL_TX ; 
 scalar_t__ SPEED_100 ; 
 scalar_t__ SPEED_1000 ; 
 int TG3_PHYFLG_EEE_CAP ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*) ; 

__attribute__((used)) static void FUNC5(struct tg3 *tp)
{
	if (!FUNC1(tp->dev)) {
		FUNC2(tp, link, tp->dev, "Link is down\n");
		FUNC4(tp);
	} else if (FUNC3(tp)) {
		FUNC0(tp->dev, "Link is up at %d Mbps, %s duplex\n",
			    (tp->link_config.active_speed == SPEED_1000 ?
			     1000 :
			     (tp->link_config.active_speed == SPEED_100 ?
			      100 : 10)),
			    (tp->link_config.active_duplex == DUPLEX_FULL ?
			     "full" : "half"));

		FUNC0(tp->dev, "Flow control is %s for TX and %s for RX\n",
			    (tp->link_config.active_flowctrl & FLOW_CTRL_TX) ?
			    "on" : "off",
			    (tp->link_config.active_flowctrl & FLOW_CTRL_RX) ?
			    "on" : "off");

		if (tp->phy_flags & TG3_PHYFLG_EEE_CAP)
			FUNC0(tp->dev, "EEE is %s\n",
				    tp->setlpicnt ? "enabled" : "disabled");

		FUNC4(tp);
	}

	tp->link_up = FUNC1(tp->dev);
}