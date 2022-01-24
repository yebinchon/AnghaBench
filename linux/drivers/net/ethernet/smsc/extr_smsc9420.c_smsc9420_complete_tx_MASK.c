#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct smsc9420_pdata {int tx_ring_tail; int tx_ring_head; TYPE_2__* tx_ring; TYPE_1__* tx_buffers; int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; } ;
struct TYPE_5__ {int status; int length; scalar_t__ buffer1; } ;
struct TYPE_4__ {TYPE_3__* skb; scalar_t__ mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int TDES0_OWN_ ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 struct smsc9420_pdata* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct smsc9420_pdata *pd = FUNC2(dev);

	while (pd->tx_ring_tail != pd->tx_ring_head) {
		int index = pd->tx_ring_tail;
		u32 status, length;

		FUNC4();
		status = pd->tx_ring[index].status;
		length = pd->tx_ring[index].length;

		/* Check if DMA still owns this descriptor */
		if (FUNC6(TDES0_OWN_ & status))
			break;

		FUNC5(dev, status, length);

		FUNC0(!pd->tx_buffers[index].skb);
		FUNC0(!pd->tx_buffers[index].mapping);

		FUNC3(pd->pdev, pd->tx_buffers[index].mapping,
			pd->tx_buffers[index].skb->len, PCI_DMA_TODEVICE);
		pd->tx_buffers[index].mapping = 0;

		FUNC1(pd->tx_buffers[index].skb);
		pd->tx_buffers[index].skb = NULL;

		pd->tx_ring[index].buffer1 = 0;
		FUNC7();

		pd->tx_ring_tail = (pd->tx_ring_tail + 1) % TX_RING_SIZE;
	}
}