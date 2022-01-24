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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct rx_dma {int buff_stat; int status; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct db_dest {int dma_addr; scalar_t__ vaddr; } ;
struct au1000_private {size_t rx_head; struct rx_dma** rx_dma_ring; struct db_dest** rx_db_inuse; } ;

/* Variables and functions */
 int NUM_RX_DMA ; 
 int RX_COLL ; 
 int RX_CRC_ERROR ; 
 int RX_DMA_ENABLE ; 
 int RX_ERROR ; 
 int RX_FRAME_LEN_MASK ; 
 int RX_LEN_ERROR ; 
 int RX_MII_ERROR ; 
 int RX_MISSED_FRAME ; 
 int RX_OVERLEN ; 
 int RX_RUNT ; 
 int RX_T_DONE ; 
 int RX_U_CNTRL_FRAME ; 
 int RX_WDOG_TIMER ; 
 int au1000_debug ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct au1000_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct au1000_private*,int /*<<< orphan*/ ,struct net_device*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct au1000_private *aup = FUNC3(dev);
	struct sk_buff *skb;
	struct rx_dma *prxd;
	u32 buff_stat, status;
	struct db_dest *pDB;
	u32	frmlen;

	FUNC4(aup, rx_status, dev, "au1000_rx head %d\n", aup->rx_head);

	prxd = aup->rx_dma_ring[aup->rx_head];
	buff_stat = prxd->buff_stat;
	while (buff_stat & RX_T_DONE)  {
		status = prxd->status;
		pDB = aup->rx_db_inuse[aup->rx_head];
		FUNC0(dev, status);
		if (!(status & RX_ERROR))  {

			/* good frame */
			frmlen = (status & RX_FRAME_LEN_MASK);
			frmlen -= 4; /* Remove FCS */
			skb = FUNC2(dev, frmlen + 2);
			if (skb == NULL) {
				dev->stats.rx_dropped++;
				continue;
			}
			FUNC10(skb, 2);	/* 16 byte IP header align */
			FUNC8(skb,
				(unsigned char *)pDB->vaddr, frmlen);
			FUNC9(skb, frmlen);
			skb->protocol = FUNC1(skb, dev);
			FUNC5(skb);	/* pass the packet to upper layers */
		} else {
			if (au1000_debug > 4) {
				FUNC7("rx_error(s):");
				if (status & RX_MISSED_FRAME)
					FUNC6(" miss");
				if (status & RX_WDOG_TIMER)
					FUNC6(" wdog");
				if (status & RX_RUNT)
					FUNC6(" runt");
				if (status & RX_OVERLEN)
					FUNC6(" overlen");
				if (status & RX_COLL)
					FUNC6(" coll");
				if (status & RX_MII_ERROR)
					FUNC6(" mii error");
				if (status & RX_CRC_ERROR)
					FUNC6(" crc error");
				if (status & RX_LEN_ERROR)
					FUNC6(" len error");
				if (status & RX_U_CNTRL_FRAME)
					FUNC6(" u control frame");
				FUNC6("\n");
			}
		}
		prxd->buff_stat = (u32)(pDB->dma_addr | RX_DMA_ENABLE);
		aup->rx_head = (aup->rx_head + 1) & (NUM_RX_DMA - 1);
		FUNC11(); /* drain writebuffer */

		/* next descriptor */
		prxd = aup->rx_dma_ring[aup->rx_head];
		buff_stat = prxd->buff_stat;
	}
	return 0;
}