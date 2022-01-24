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
struct sk_buff {int /*<<< orphan*/  protocol; struct net_device* dev; scalar_t__ data; } ;
struct net_device_stats {unsigned int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct net_device {int /*<<< orphan*/  dev; struct net_device_stats stats; } ;
struct buffer_state {struct sk_buff* skb; } ;
struct arc_emac_priv {unsigned int last_rx_bd; struct arc_emac_bd* rxbd; struct buffer_state* rx_buff; } ;
struct arc_emac_bd {void* info; void* data; } ;
typedef  unsigned int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 unsigned int EMAC_BUFFER_SIZE ; 
 unsigned int FIRST_OR_LAST_MASK ; 
 unsigned int FOR_EMAC ; 
 unsigned int LEN_MASK ; 
 unsigned int OWN_MASK ; 
 unsigned int RX_BD_NUM ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,void*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_state*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_state*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct net_device*) ; 
 unsigned int FUNC10 (void*) ; 
 int /*<<< orphan*/  len ; 
 scalar_t__ FUNC11 () ; 
 struct sk_buff* FUNC12 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*) ; 
 struct arc_emac_priv* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static int FUNC19(struct net_device *ndev, int budget)
{
	struct arc_emac_priv *priv = FUNC14(ndev);
	unsigned int work_done;

	for (work_done = 0; work_done < budget; work_done++) {
		unsigned int *last_rx_bd = &priv->last_rx_bd;
		struct net_device_stats *stats = &ndev->stats;
		struct buffer_state *rx_buff = &priv->rx_buff[*last_rx_bd];
		struct arc_emac_bd *rxbd = &priv->rxbd[*last_rx_bd];
		unsigned int pktlen, info = FUNC10(rxbd->info);
		struct sk_buff *skb;
		dma_addr_t addr;

		if (FUNC17((info & OWN_MASK) == FOR_EMAC))
			break;

		/* Make a note that we saw a packet at this BD.
		 * So next time, driver starts from this + 1
		 */
		*last_rx_bd = (*last_rx_bd + 1) % RX_BD_NUM;

		if (FUNC17((info & FIRST_OR_LAST_MASK) !=
			     FIRST_OR_LAST_MASK)) {
			/* We pre-allocate buffers of MTU size so incoming
			 * packets won't be split/chained.
			 */
			if (FUNC11())
				FUNC13(ndev, "incomplete packet received\n");

			/* Return ownership to EMAC */
			rxbd->info = FUNC0(FOR_EMAC | EMAC_BUFFER_SIZE);
			stats->rx_errors++;
			stats->rx_length_errors++;
			continue;
		}

		/* Prepare the BD for next cycle. netif_receive_skb()
		 * only if new skb was allocated and mapped to avoid holes
		 * in the RX fifo.
		 */
		skb = FUNC12(ndev, EMAC_BUFFER_SIZE);
		if (FUNC17(!skb)) {
			if (FUNC11())
				FUNC13(ndev, "cannot allocate skb\n");
			/* Return ownership to EMAC */
			rxbd->info = FUNC0(FOR_EMAC | EMAC_BUFFER_SIZE);
			stats->rx_errors++;
			stats->rx_dropped++;
			continue;
		}

		addr = FUNC2(&ndev->dev, (void *)skb->data,
				      EMAC_BUFFER_SIZE, DMA_FROM_DEVICE);
		if (FUNC3(&ndev->dev, addr)) {
			if (FUNC11())
				FUNC13(ndev, "cannot map dma buffer\n");
			FUNC1(skb);
			/* Return ownership to EMAC */
			rxbd->info = FUNC0(FOR_EMAC | EMAC_BUFFER_SIZE);
			stats->rx_errors++;
			stats->rx_dropped++;
			continue;
		}

		/* unmap previosly mapped skb */
		FUNC8(&ndev->dev, FUNC4(rx_buff, addr),
				 FUNC6(rx_buff, len), DMA_FROM_DEVICE);

		pktlen = info & LEN_MASK;
		stats->rx_packets++;
		stats->rx_bytes += pktlen;
		FUNC16(rx_buff->skb, pktlen);
		rx_buff->skb->dev = ndev;
		rx_buff->skb->protocol = FUNC9(rx_buff->skb, ndev);

		FUNC15(rx_buff->skb);

		rx_buff->skb = skb;
		FUNC5(rx_buff, addr, addr);
		FUNC7(rx_buff, len, EMAC_BUFFER_SIZE);

		rxbd->data = FUNC0(addr);

		/* Make sure pointer to data buffer is set */
		FUNC18();

		/* Return ownership to EMAC */
		rxbd->info = FUNC0(FOR_EMAC | EMAC_BUFFER_SIZE);
	}

	return work_done;
}