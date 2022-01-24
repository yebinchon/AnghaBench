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
struct timer_list {int dummy; } ;
struct spider_net_card {TYPE_1__* netdev; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int IFF_UP ; 
 struct spider_net_card* card ; 
 struct spider_net_card* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct spider_net_card*) ; 
 scalar_t__ FUNC3 (struct spider_net_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tx_timer ; 

__attribute__((used)) static void
FUNC4(struct timer_list *t)
{
	struct spider_net_card *card = FUNC0(card, t, tx_timer);
	if ((FUNC3(card, 0) != 0) &&
	    (card->netdev->flags & IFF_UP)) {
		FUNC2(card);
		FUNC1(card->netdev);
	}
}