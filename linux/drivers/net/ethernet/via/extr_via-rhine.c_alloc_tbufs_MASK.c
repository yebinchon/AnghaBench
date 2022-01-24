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
struct tx_desc {int dummy; } ;
struct rhine_private {int tx_ring_dma; int quirks; TYPE_1__* tx_ring; int /*<<< orphan*/ * tx_bufs; int /*<<< orphan*/ ** tx_buf; int /*<<< orphan*/ ** tx_skbuff; scalar_t__ cur_tx; scalar_t__ dirty_tx; } ;
struct net_device {int dummy; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {void* next_desc; void* desc_length; scalar_t__ tx_status; } ;

/* Variables and functions */
 int PKT_BUF_SZ ; 
 int TXDESC ; 
 int TX_RING_SIZE ; 
 void* FUNC0 (int) ; 
 struct rhine_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int rqRhineI ; 

__attribute__((used)) static void FUNC3(struct net_device* dev)
{
	struct rhine_private *rp = FUNC1(dev);
	dma_addr_t next;
	int i;

	rp->dirty_tx = rp->cur_tx = 0;
	next = rp->tx_ring_dma;
	for (i = 0; i < TX_RING_SIZE; i++) {
		rp->tx_skbuff[i] = NULL;
		rp->tx_ring[i].tx_status = 0;
		rp->tx_ring[i].desc_length = FUNC0(TXDESC);
		next += sizeof(struct tx_desc);
		rp->tx_ring[i].next_desc = FUNC0(next);
		if (rp->quirks & rqRhineI)
			rp->tx_buf[i] = &rp->tx_bufs[i * PKT_BUF_SZ];
	}
	rp->tx_ring[i-1].next_desc = FUNC0(rp->tx_ring_dma);

	FUNC2(dev);
}