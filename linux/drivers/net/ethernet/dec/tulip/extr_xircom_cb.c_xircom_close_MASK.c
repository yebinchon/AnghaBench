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
struct xircom_private {TYPE_1__* pdev; scalar_t__ open; int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xircom_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct xircom_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct xircom_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct xircom_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct xircom_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct xircom_private *card;
	unsigned long flags;

	card = FUNC4(dev);
	FUNC5(dev); /* we don't want new packets */


	FUNC7(&card->lock,flags);

	FUNC2(card);
#if 0
	/* We can enable this again once we send dummy packets on ifconfig ethX up */
	deactivate_receiver(card);
	deactivate_transmitter(card);
#endif
	FUNC6(card);

	FUNC8(&card->lock,flags);

	card->open = 0;
	FUNC3(card->pdev->irq, dev);

	return 0;

}