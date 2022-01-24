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
struct spider_net_card {int /*<<< orphan*/  tx_timeout_task_counter; int /*<<< orphan*/  waitq; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPIDER_NET_CKRCTRL ; 
 int /*<<< orphan*/  SPIDER_NET_CKRCTRL_RUN_VALUE ; 
 int /*<<< orphan*/  SPIDER_NET_CKRCTRL_STOP_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct spider_net_card* FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct spider_net_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct pci_dev *pdev)
{
	struct net_device *netdev;
	struct spider_net_card *card;

	netdev = FUNC3(pdev);
	card = FUNC2(netdev);

	FUNC7(card->waitq,
		   FUNC0(&card->tx_timeout_task_counter) == 0);

	FUNC6(netdev);

	/* switch off card */
	FUNC5(card, SPIDER_NET_CKRCTRL,
			     SPIDER_NET_CKRCTRL_STOP_VALUE);
	FUNC5(card, SPIDER_NET_CKRCTRL,
			     SPIDER_NET_CKRCTRL_RUN_VALUE);

	FUNC4(card);
	FUNC1(netdev);
}