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
struct urb {int dummy; } ;
struct lan78xx_net {scalar_t__ rx_qlen; scalar_t__ tx_qlen; int /*<<< orphan*/  net; int /*<<< orphan*/  txq; int /*<<< orphan*/  bh; int /*<<< orphan*/  rxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOLINK ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan78xx_net*,struct urb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct lan78xx_net *dev)
{
	struct urb *urb;
	int i;

	if (FUNC2(&dev->rxq) < dev->rx_qlen) {
		for (i = 0; i < 10; i++) {
			if (FUNC2(&dev->rxq) >= dev->rx_qlen)
				break;
			urb = FUNC4(0, GFP_ATOMIC);
			if (urb)
				if (FUNC1(dev, urb, GFP_ATOMIC) == -ENOLINK)
					return;
		}

		if (FUNC2(&dev->rxq) < dev->rx_qlen)
			FUNC3(&dev->bh);
	}
	if (FUNC2(&dev->txq) < dev->tx_qlen)
		FUNC0(dev->net);
}