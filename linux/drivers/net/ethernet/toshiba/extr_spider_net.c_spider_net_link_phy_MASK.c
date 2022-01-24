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
struct timer_list {int dummy; } ;
struct mii_phy {int speed; int duplex; int autoneg; TYPE_2__* def; } ;
struct spider_net_card {scalar_t__ aneg_count; int medium; TYPE_3__* netdev; int /*<<< orphan*/  aneg_timer; struct mii_phy phy; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* read_link ) (struct mii_phy*) ;int /*<<< orphan*/  (* poll_link ) (struct mii_phy*) ;int /*<<< orphan*/  (* enable_fiber ) (struct mii_phy*,int) ;} ;

/* Variables and functions */
#define  BCM54XX_COPPER 130 
#define  BCM54XX_FIBER 129 
#define  BCM54XX_UNKNOWN 128 
 scalar_t__ SPIDER_NET_ANEG_TIMEOUT ; 
 scalar_t__ SPIDER_NET_ANEG_TIMER ; 
 int /*<<< orphan*/  SPIDER_NET_GMACINTEN ; 
 int /*<<< orphan*/  SPIDER_NET_GMACMODE ; 
 int /*<<< orphan*/  SPIDER_NET_GMACST ; 
 int /*<<< orphan*/  aneg_timer ; 
 struct spider_net_card* card ; 
 struct spider_net_card* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC4 (struct spider_net_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct spider_net_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mii_phy*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mii_phy*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mii_phy*) ; 
 int /*<<< orphan*/  FUNC10 (struct mii_phy*) ; 

__attribute__((used)) static void FUNC11(struct timer_list *t)
{
	struct spider_net_card *card = FUNC0(card, t, aneg_timer);
	struct mii_phy *phy = &card->phy;

	/* if link didn't come up after SPIDER_NET_ANEG_TIMEOUT tries, setup phy again */
	if (card->aneg_count > SPIDER_NET_ANEG_TIMEOUT) {

		FUNC2("%s: link is down trying to bring it up\n",
			 card->netdev->name);

		switch (card->medium) {
		case BCM54XX_COPPER:
			/* enable fiber with autonegotiation first */
			if (phy->def->ops->enable_fiber)
				phy->def->ops->enable_fiber(phy, 1);
			card->medium = BCM54XX_FIBER;
			break;

		case BCM54XX_FIBER:
			/* fiber didn't come up, try to disable fiber autoneg */
			if (phy->def->ops->enable_fiber)
				phy->def->ops->enable_fiber(phy, 0);
			card->medium = BCM54XX_UNKNOWN;
			break;

		case BCM54XX_UNKNOWN:
			/* copper, fiber with and without failed,
			 * retry from beginning */
			FUNC5(card);
			card->medium = BCM54XX_COPPER;
			break;
		}

		card->aneg_count = 0;
		FUNC1(&card->aneg_timer, jiffies + SPIDER_NET_ANEG_TIMER);
		return;
	}

	/* link still not up, try again later */
	if (!(phy->def->ops->poll_link(phy))) {
		card->aneg_count++;
		FUNC1(&card->aneg_timer, jiffies + SPIDER_NET_ANEG_TIMER);
		return;
	}

	/* link came up, get abilities */
	phy->def->ops->read_link(phy);

	FUNC6(card, SPIDER_NET_GMACST,
			     FUNC4(card, SPIDER_NET_GMACST));
	FUNC6(card, SPIDER_NET_GMACINTEN, 0x4);

	if (phy->speed == 1000)
		FUNC6(card, SPIDER_NET_GMACMODE, 0x00000001);
	else
		FUNC6(card, SPIDER_NET_GMACMODE, 0);

	card->aneg_count = 0;

	FUNC3("%s: link up, %i Mbps, %s-duplex %sautoneg.\n",
		card->netdev->name, phy->speed,
		phy->duplex == 1 ? "Full" : "Half",
		phy->autoneg == 1 ? "" : "no ");
}