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
struct pxa168_eth_private {int rx_ring_size; scalar_t__* rx_skb; int /*<<< orphan*/  rx_desc_dma; scalar_t__ p_rx_desc_area; int /*<<< orphan*/  rx_desc_area_size; TYPE_2__* dev; scalar_t__ rx_desc_count; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,scalar_t__) ; 
 struct pxa168_eth_private* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct pxa168_eth_private *pep = FUNC4(dev);
	int curr;

	/* Free preallocated skb's on RX rings */
	for (curr = 0; pep->rx_desc_count && curr < pep->rx_ring_size; curr++) {
		if (pep->rx_skb[curr]) {
			FUNC0(pep->rx_skb[curr]);
			pep->rx_desc_count--;
		}
	}
	if (pep->rx_desc_count)
		FUNC3(dev, "Error in freeing Rx Ring. %d skb's still\n",
			   pep->rx_desc_count);
	/* Free RX ring */
	if (pep->p_rx_desc_area)
		FUNC1(pep->dev->dev.parent, pep->rx_desc_area_size,
				  pep->p_rx_desc_area, pep->rx_desc_dma);
	FUNC2(pep->rx_skb);
}