#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct z8530_channel {int rxdma_on; int dma_ready; unsigned char** rx_buf; size_t dma_num; int mtu; int count; int max; TYPE_2__* netdevice; int /*<<< orphan*/  (* rx_function ) (struct z8530_channel*,struct sk_buff*) ;struct sk_buff* skb2; struct sk_buff* skb; int /*<<< orphan*/  dptr; int /*<<< orphan*/  rxdma; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int DMA_MODE_READ ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  RES_Rx_CRC ; 
 int /*<<< orphan*/  RT_LOCK ; 
 int /*<<< orphan*/  RT_UNLOCK ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct z8530_channel*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC17 (struct z8530_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct z8530_channel *c)
{
	struct sk_buff *skb;
	int ct;
	
	/*
	 *	Is our receive engine in DMA mode
	 */
	 
	if(c->rxdma_on)
	{
		/*
		 *	Save the ready state and the buffer currently
		 *	being used as the DMA target
		 */
		 
		int ready=c->dma_ready;
		unsigned char *rxb=c->rx_buf[c->dma_num];
		unsigned long flags;
		
		/*
		 *	Complete this DMA. Necessary to find the length
		 */		
		 
		flags=FUNC0();
		
		FUNC3(c->rxdma);
		FUNC1(c->rxdma);
		c->rxdma_on=0;
		ct=c->mtu-FUNC5(c->rxdma);
		if(ct<0)
			ct=2;	/* Shit happens.. */
		c->dma_ready=0;
		
		/*
		 *	Normal case: the other slot is free, start the next DMA
		 *	into it immediately.
		 */
		 
		if(ready)
		{
			c->dma_num^=1;
			FUNC11(c->rxdma, DMA_MODE_READ|0x10);
			FUNC9(c->rxdma, FUNC16(c->rx_buf[c->dma_num]));
			FUNC10(c->rxdma, c->mtu);
			c->rxdma_on = 1;
			FUNC4(c->rxdma);
			/* Stop any frames that we missed the head of 
			   from passing */
			FUNC17(c, R0, RES_Rx_CRC);
		}
		else
			/* Can't occur as we dont reenable the DMA irq until
			   after the flip is done */
			FUNC7(c->netdevice, "DMA flip overrun!\n");

		FUNC8(flags);

		/*
		 *	Shove the old buffer into an sk_buff. We can't DMA
		 *	directly into one on a PC - it might be above the 16Mb
		 *	boundary. Optimisation - we could check to see if we
		 *	can avoid the copy. Optimisation 2 - make the memcpy
		 *	a copychecksum.
		 */

		skb = FUNC2(ct);
		if (skb == NULL) {
			c->netdevice->stats.rx_dropped++;
			FUNC7(c->netdevice, "Memory squeeze\n");
		} else {
			FUNC13(skb, ct);
			FUNC12(skb, rxb, ct);
			c->netdevice->stats.rx_packets++;
			c->netdevice->stats.rx_bytes += ct;
		}
		c->dma_ready = 1;
	} else {
		RT_LOCK;
		skb = c->skb;

		/*
		 *	The game we play for non DMA is similar. We want to
		 *	get the controller set up for the next packet as fast
		 *	as possible. We potentially only have one byte + the
		 *	fifo length for this. Thus we want to flip to the new
		 *	buffer and then mess around copying and allocating
		 *	things. For the current case it doesn't matter but
		 *	if you build a system where the sync irq isn't blocked
		 *	by the kernel IRQ disable then you need only block the
		 *	sync IRQ for the RT_LOCK area.
		 *
		 */
		ct=c->count;

		c->skb = c->skb2;
		c->count = 0;
		c->max = c->mtu;
		if (c->skb) {
			c->dptr = c->skb->data;
			c->max = c->mtu;
		} else {
			c->count = 0;
			c->max = 0;
		}
		RT_UNLOCK;

		c->skb2 = FUNC2(c->mtu);
		if (c->skb2 == NULL)
			FUNC7(c->netdevice, "memory squeeze\n");
		else
			FUNC13(c->skb2, c->mtu);
		c->netdevice->stats.rx_packets++;
		c->netdevice->stats.rx_bytes += ct;
	}
	/*
	 *	If we received a frame we must now process it.
	 */
	if (skb) {
		FUNC14(skb, ct);
		c->rx_function(c, skb);
	} else {
		c->netdevice->stats.rx_dropped++;
		FUNC6(c->netdevice, "Lost a frame\n");
	}
}