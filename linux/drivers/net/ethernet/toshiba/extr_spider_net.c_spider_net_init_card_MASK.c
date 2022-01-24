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
struct spider_net_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPIDER_NET_CKRCTRL ; 
 int SPIDER_NET_CKRCTRL_RUN_VALUE ; 
 int SPIDER_NET_CKRCTRL_STOP_VALUE ; 
 int /*<<< orphan*/  SPIDER_NET_GMACOPEMD ; 
 int /*<<< orphan*/  FUNC0 (struct spider_net_card*) ; 
 int FUNC1 (struct spider_net_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spider_net_card*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct spider_net_card *card)
{
	FUNC2(card, SPIDER_NET_CKRCTRL,
			     SPIDER_NET_CKRCTRL_STOP_VALUE);

	FUNC2(card, SPIDER_NET_CKRCTRL,
			     SPIDER_NET_CKRCTRL_RUN_VALUE);

	/* trigger ETOMOD signal */
	FUNC2(card, SPIDER_NET_GMACOPEMD,
		FUNC1(card, SPIDER_NET_GMACOPEMD) | 0x4);

	FUNC0(card);
}