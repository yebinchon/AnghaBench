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
struct spider_net_card {int /*<<< orphan*/  aneg_timer; int /*<<< orphan*/  medium; scalar_t__ aneg_count; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM54XX_COPPER ; 
 scalar_t__ SPIDER_NET_ANEG_TIMER ; 
 int /*<<< orphan*/  SPIDER_NET_GMACINTEN ; 
 int /*<<< orphan*/  SPIDER_NET_GMACST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct spider_net_card* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct spider_net_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct spider_net_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct net_device *netdev)
{

	struct spider_net_card *card = FUNC2(netdev);

	FUNC0(&card->aneg_timer);

	/* clear interrupt, block further interrupts */
	FUNC5(card, SPIDER_NET_GMACST,
			     FUNC3(card, SPIDER_NET_GMACST));
	FUNC5(card, SPIDER_NET_GMACINTEN, 0);

	/* reset phy and setup aneg */
	card->aneg_count = 0;
	card->medium = BCM54XX_COPPER;
	FUNC4(card);
	FUNC1(&card->aneg_timer, jiffies + SPIDER_NET_ANEG_TIMER);

}