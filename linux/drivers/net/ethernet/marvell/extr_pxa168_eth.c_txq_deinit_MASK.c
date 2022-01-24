#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pxa168_eth_private {scalar_t__ tx_used_desc_q; scalar_t__ tx_curr_desc_q; int /*<<< orphan*/  tx_skb; int /*<<< orphan*/  tx_desc_dma; scalar_t__ p_tx_desc_area; int /*<<< orphan*/  tx_desc_area_size; TYPE_2__* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct pxa168_eth_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct pxa168_eth_private *pep = FUNC3(dev);

	/* Free outstanding skb's on TX ring */
	FUNC4(dev, 1);
	FUNC0(pep->tx_used_desc_q != pep->tx_curr_desc_q);
	/* Free TX ring */
	if (pep->p_tx_desc_area)
		FUNC1(pep->dev->dev.parent, pep->tx_desc_area_size,
				  pep->p_tx_desc_area, pep->tx_desc_dma);
	FUNC2(pep->tx_skb);
}