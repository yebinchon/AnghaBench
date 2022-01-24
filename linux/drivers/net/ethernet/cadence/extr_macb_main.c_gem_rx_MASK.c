#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {unsigned int len; unsigned int csum; int /*<<< orphan*/  data; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; } ;
struct napi_struct {int dummy; } ;
struct TYPE_9__ {unsigned int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct macb_queue {TYPE_3__ stats; struct sk_buff** rx_skbuff; int /*<<< orphan*/  rx_tail; struct macb* bp; } ;
struct macb_dma_desc {int addr; int ctrl; } ;
struct macb {int rx_frm_len_mask; TYPE_4__* dev; int /*<<< orphan*/  rx_buffer_size; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {unsigned int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_10__ {int features; int flags; TYPE_2__ stats; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DUMP_PREFIX_ADDRESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int GEM_RX_CSUM_CHECKED_MASK ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  RX_CSUM ; 
 int /*<<< orphan*/  RX_EOF ; 
 int /*<<< orphan*/  RX_SOF ; 
 int /*<<< orphan*/  RX_USED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct macb*,struct sk_buff*,struct macb_dma_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct macb_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct macb*,struct macb_dma_desc*) ; 
 struct macb_dma_desc* FUNC8 (struct macb_queue*,unsigned int) ; 
 unsigned int FUNC9 (struct macb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct napi_struct*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(struct macb_queue *queue, struct napi_struct *napi,
		  int budget)
{
	struct macb *bp = queue->bp;
	unsigned int		len;
	unsigned int		entry;
	struct sk_buff		*skb;
	struct macb_dma_desc	*desc;
	int			count = 0;

	while (count < budget) {
		u32 ctrl;
		dma_addr_t addr;
		bool rxused;

		entry = FUNC9(bp, queue->rx_tail);
		desc = FUNC8(queue, entry);

		/* Make hw descriptor updates visible to CPU */
		FUNC14();

		rxused = (desc->addr & FUNC1(RX_USED)) ? true : false;
		addr = FUNC7(bp, desc);

		if (!rxused)
			break;

		/* Ensure ctrl is at least as up-to-date as rxused */
		FUNC2();

		ctrl = desc->ctrl;

		queue->rx_tail++;
		count++;

		if (!(ctrl & FUNC1(RX_SOF) && ctrl & FUNC1(RX_EOF))) {
			FUNC11(bp->dev,
				   "not whole frame pointed by descriptor\n");
			bp->dev->stats.rx_dropped++;
			queue->stats.rx_dropped++;
			break;
		}
		skb = queue->rx_skbuff[entry];
		if (FUNC18(!skb)) {
			FUNC11(bp->dev,
				   "inconsistent Rx descriptor chain\n");
			bp->dev->stats.rx_dropped++;
			queue->stats.rx_dropped++;
			break;
		}
		/* now everything is ready for receiving packet */
		queue->rx_skbuff[entry] = NULL;
		len = ctrl & bp->rx_frm_len_mask;

		FUNC12(bp->dev, "gem_rx %u (len %u)\n", entry, len);

		FUNC17(skb, len);
		FUNC3(&bp->pdev->dev, addr,
				 bp->rx_buffer_size, DMA_FROM_DEVICE);

		skb->protocol = FUNC4(skb, bp->dev);
		FUNC15(skb);
		if (bp->dev->features & NETIF_F_RXCSUM &&
		    !(bp->dev->flags & IFF_PROMISC) &&
		    FUNC0(RX_CSUM, ctrl) & GEM_RX_CSUM_CHECKED_MASK)
			skb->ip_summed = CHECKSUM_UNNECESSARY;

		bp->dev->stats.rx_packets++;
		queue->stats.rx_packets++;
		bp->dev->stats.rx_bytes += skb->len;
		queue->stats.rx_bytes += skb->len;

		FUNC5(bp, skb, desc);

#if defined(DEBUG) && defined(VERBOSE_DEBUG)
		netdev_vdbg(bp->dev, "received skb of length %u, csum: %08x\n",
			    skb->len, skb->csum);
		print_hex_dump(KERN_DEBUG, " mac: ", DUMP_PREFIX_ADDRESS, 16, 1,
			       skb_mac_header(skb), 16, true);
		print_hex_dump(KERN_DEBUG, "data: ", DUMP_PREFIX_ADDRESS, 16, 1,
			       skb->data, 32, true);
#endif

		FUNC10(napi, skb);
	}

	FUNC6(queue);

	return count;
}