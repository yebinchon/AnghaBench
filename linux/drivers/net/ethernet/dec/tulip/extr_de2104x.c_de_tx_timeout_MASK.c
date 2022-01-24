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
struct net_device {int dummy; } ;
struct de_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  media_timer; int /*<<< orphan*/  tx_tail; int /*<<< orphan*/  tx_head; int /*<<< orphan*/  rx_tail; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MacMode ; 
 int /*<<< orphan*/  MacStatus ; 
 int /*<<< orphan*/  SIAStatus ; 
 int /*<<< orphan*/  FUNC0 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int const) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct de_private* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int const) ; 

__attribute__((used)) static void FUNC17 (struct net_device *dev)
{
	struct de_private *de = FUNC10(dev);
	const int irq = de->pdev->irq;

	FUNC9(dev, "NIC status %08x mode %08x sia %08x desc %u/%u/%u\n",
		   FUNC7(MacStatus), FUNC7(MacMode), FUNC7(SIAStatus),
		   de->rx_tail, de->tx_head, de->tx_tail);

	FUNC5(&de->media_timer);

	FUNC6(irq);
	FUNC14(&de->lock);

	FUNC4(de);
	FUNC12(dev);
	FUNC11(dev);

	FUNC15(&de->lock);
	FUNC8(irq);

	/* Update the error counts. */
	FUNC0(de);

	FUNC16(irq);
	FUNC1(de);

	FUNC3(de);

	FUNC2(de);

	FUNC13(dev);
}