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
struct temac_local {int rx_bd_ci; int temac_features; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  (* dma_out ) (struct temac_local*,int /*<<< orphan*/ ,scalar_t__) ;struct cdmac_bd* rx_bd_v; struct sk_buff** rx_skb; scalar_t__ rx_bd_p; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  csum; int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_2__ dev; TYPE_1__ stats; } ;
struct cdmac_bd {void* app0; void* len; void* phys; void* app3; void* app4; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_COMPLETE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ETH_P_IP ; 
 size_t RX_BD_NUM ; 
 int /*<<< orphan*/  RX_TAILDESC_PTR ; 
 unsigned int STS_CTRL_APP0_CMPLT ; 
 scalar_t__ STS_CTRL_APP0_IRQONEND ; 
 int TEMAC_FEATURE_RX_CSUM ; 
 scalar_t__ XTE_MAX_JUMBO_FRAME_SIZE ; 
 int FUNC0 (void*) ; 
 void* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct sk_buff* FUNC6 (struct net_device*,scalar_t__) ; 
 struct temac_local* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct temac_local*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct net_device *ndev)
{
	struct temac_local *lp = FUNC7(ndev);
	struct sk_buff *skb, *new_skb;
	unsigned int bdstat;
	struct cdmac_bd *cur_p;
	dma_addr_t tail_p, skb_dma_addr;
	int length;
	unsigned long flags;

	FUNC12(&lp->rx_lock, flags);

	tail_p = lp->rx_bd_p + sizeof(*lp->rx_bd_v) * lp->rx_bd_ci;
	cur_p = &lp->rx_bd_v[lp->rx_bd_ci];

	bdstat = FUNC0(cur_p->app0);
	while ((bdstat & STS_CTRL_APP0_CMPLT)) {

		skb = lp->rx_skb[lp->rx_bd_ci];
		length = FUNC0(cur_p->app4) & 0x3FFF;

		FUNC3(ndev->dev.parent, FUNC0(cur_p->phys),
				 XTE_MAX_JUMBO_FRAME_SIZE, DMA_FROM_DEVICE);

		FUNC11(skb, length);
		skb->protocol = FUNC4(skb, ndev);
		FUNC9(skb);

		/* if we're doing rx csum offload, set it up */
		if (((lp->temac_features & TEMAC_FEATURE_RX_CSUM) != 0) &&
		    (skb->protocol == FUNC5(ETH_P_IP)) &&
		    (skb->len > 64)) {

			/* Convert from device endianness (be32) to cpu
			 * endiannes, and if necessary swap the bytes
			 * (back) for proper IP checksum byte order
			 * (be16).
			 */
			skb->csum = FUNC5(FUNC0(cur_p->app3) & 0xFFFF);
			skb->ip_summed = CHECKSUM_COMPLETE;
		}

		if (!FUNC10(skb))
			FUNC8(skb);

		ndev->stats.rx_packets++;
		ndev->stats.rx_bytes += length;

		new_skb = FUNC6(ndev,
						XTE_MAX_JUMBO_FRAME_SIZE);
		if (!new_skb) {
			FUNC13(&lp->rx_lock, flags);
			return;
		}

		cur_p->app0 = FUNC1(STS_CTRL_APP0_IRQONEND);
		skb_dma_addr = FUNC2(ndev->dev.parent, new_skb->data,
					      XTE_MAX_JUMBO_FRAME_SIZE,
					      DMA_FROM_DEVICE);
		cur_p->phys = FUNC1(skb_dma_addr);
		cur_p->len = FUNC1(XTE_MAX_JUMBO_FRAME_SIZE);
		lp->rx_skb[lp->rx_bd_ci] = new_skb;

		lp->rx_bd_ci++;
		if (lp->rx_bd_ci >= RX_BD_NUM)
			lp->rx_bd_ci = 0;

		cur_p = &lp->rx_bd_v[lp->rx_bd_ci];
		bdstat = FUNC0(cur_p->app0);
	}
	lp->dma_out(lp, RX_TAILDESC_PTR, tail_p);

	FUNC13(&lp->rx_lock, flags);
}