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
typedef  int u32 ;
struct tx_dma {int buff_stat; int len; int /*<<< orphan*/  status; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct net_device_stats {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct db_dest {int dma_addr; scalar_t__ vaddr; } ;
struct au1000_private {size_t tx_head; int tx_full; struct db_dest** tx_db_inuse; struct tx_dma** tx_dma_ring; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int ETH_ZLEN ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int NUM_TX_DMA ; 
 int TX_DMA_ENABLE ; 
 int TX_T_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct au1000_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct au1000_private*,int /*<<< orphan*/ ,struct net_device*,char*,unsigned int,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,void*,int) ; 
 int /*<<< orphan*/  tx_queued ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb, struct net_device *dev)
{
	struct au1000_private *aup = FUNC2(dev);
	struct net_device_stats *ps = &dev->stats;
	struct tx_dma *ptxd;
	u32 buff_stat;
	struct db_dest *pDB;
	int i;

	FUNC3(aup, tx_queued, dev, "tx: aup %x len=%d, data=%p, head %d\n",
				(unsigned)aup, skb->len,
				skb->data, aup->tx_head);

	ptxd = aup->tx_dma_ring[aup->tx_head];
	buff_stat = ptxd->buff_stat;
	if (buff_stat & TX_DMA_ENABLE) {
		/* We've wrapped around and the transmitter is still busy */
		FUNC4(dev);
		aup->tx_full = 1;
		return NETDEV_TX_BUSY;
	} else if (buff_stat & TX_T_DONE) {
		FUNC0(dev, ptxd->status);
		ptxd->len = 0;
	}

	if (aup->tx_full) {
		aup->tx_full = 0;
		FUNC5(dev);
	}

	pDB = aup->tx_db_inuse[aup->tx_head];
	FUNC6(skb, (void *)pDB->vaddr, skb->len);
	if (skb->len < ETH_ZLEN) {
		for (i = skb->len; i < ETH_ZLEN; i++)
			((char *)pDB->vaddr)[i] = 0;

		ptxd->len = ETH_ZLEN;
	} else
		ptxd->len = skb->len;

	ps->tx_packets++;
	ps->tx_bytes += ptxd->len;

	ptxd->buff_stat = pDB->dma_addr | TX_DMA_ENABLE;
	FUNC7(); /* drain writebuffer */
	FUNC1(skb);
	aup->tx_head = (aup->tx_head + 1) & (NUM_TX_DMA - 1);
	return NETDEV_TX_OK;
}