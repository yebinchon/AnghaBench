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
struct r6040_private {TYPE_1__* rx_insert_ptr; int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct TYPE_2__* vndescp; int /*<<< orphan*/ * skb_ptr; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_BUF_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RX_DCNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct r6040_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct r6040_private *lp = FUNC2(dev);
	int i;

	for (i = 0; i < RX_DCNT; i++) {
		if (lp->rx_insert_ptr->skb_ptr) {
			FUNC3(lp->pdev,
				FUNC1(lp->rx_insert_ptr->buf),
				MAX_BUF_SIZE, PCI_DMA_FROMDEVICE);
			FUNC0(lp->rx_insert_ptr->skb_ptr);
			lp->rx_insert_ptr->skb_ptr = NULL;
		}
		lp->rx_insert_ptr = lp->rx_insert_ptr->vndescp;
	}
}