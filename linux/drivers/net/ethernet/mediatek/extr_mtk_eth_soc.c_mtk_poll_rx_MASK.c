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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; struct net_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {int features; TYPE_1__ stats; } ;
struct napi_struct {int dummy; } ;
struct mtk_rx_ring {int calc_idx; int /*<<< orphan*/  buf_size; int /*<<< orphan*/ ** data; int /*<<< orphan*/  frag_size; struct mtk_rx_dma* dma; int /*<<< orphan*/  dma_size; } ;
struct mtk_rx_dma {int rxd2; int rxd4; unsigned int rxd1; int /*<<< orphan*/  rxd3; } ;
struct mtk_eth {int ip_align; int rx_dma_l4_valid; TYPE_2__* soc; int /*<<< orphan*/  dev; int /*<<< orphan*/  state; struct net_device** netdev; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MTK_MAC_COUNT ; 
 int /*<<< orphan*/  MTK_RESETTING ; 
 int /*<<< orphan*/  MTK_SOC_MT7628 ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NET_IP_ALIGN ; 
 int NET_SKB_PAD ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int RX_DMA_DONE ; 
 int RX_DMA_FPORT_MASK ; 
 int RX_DMA_FPORT_SHIFT ; 
 unsigned int FUNC2 (int) ; 
 int RX_DMA_LSO ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct mtk_rx_ring* FUNC12 (struct mtk_eth*) ; 
 int /*<<< orphan*/  FUNC13 (struct mtk_rx_dma*,struct mtk_rx_dma*) ; 
 int /*<<< orphan*/  FUNC14 (struct mtk_eth*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct napi_struct*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 () ; 

__attribute__((used)) static int FUNC25(struct napi_struct *napi, int budget,
		       struct mtk_eth *eth)
{
	struct mtk_rx_ring *ring;
	int idx;
	struct sk_buff *skb;
	u8 *data, *new_data;
	struct mtk_rx_dma *rxd, trxd;
	int done = 0;

	while (done < budget) {
		struct net_device *netdev;
		unsigned int pktlen;
		dma_addr_t dma_addr;
		int mac;

		ring = FUNC12(eth);
		if (FUNC23(!ring))
			goto rx_done;

		idx = FUNC1(ring->calc_idx, ring->dma_size);
		rxd = &ring->dma[idx];
		data = ring->data[idx];

		FUNC13(&trxd, rxd);
		if (!(trxd.rxd2 & RX_DMA_DONE))
			break;

		/* find out which mac the packet come from. values start at 1 */
		if (FUNC0(eth->soc->caps, MTK_SOC_MT7628)) {
			mac = 0;
		} else {
			mac = (trxd.rxd4 >> RX_DMA_FPORT_SHIFT) &
				RX_DMA_FPORT_MASK;
			mac--;
		}

		if (FUNC23(mac < 0 || mac >= MTK_MAC_COUNT ||
			     !eth->netdev[mac]))
			goto release_desc;

		netdev = eth->netdev[mac];

		if (FUNC23(FUNC22(MTK_RESETTING, &eth->state)))
			goto release_desc;

		/* alloc new buffer */
		new_data = FUNC15(ring->frag_size);
		if (FUNC23(!new_data)) {
			netdev->stats.rx_dropped++;
			goto release_desc;
		}
		dma_addr = FUNC7(eth->dev,
					  new_data + NET_SKB_PAD +
					  eth->ip_align,
					  ring->buf_size,
					  DMA_FROM_DEVICE);
		if (FUNC23(FUNC8(eth->dev, dma_addr))) {
			FUNC18(new_data);
			netdev->stats.rx_dropped++;
			goto release_desc;
		}

		/* receive data */
		skb = FUNC6(data, ring->frag_size);
		if (FUNC23(!skb)) {
			FUNC18(new_data);
			netdev->stats.rx_dropped++;
			goto release_desc;
		}
		FUNC21(skb, NET_SKB_PAD + NET_IP_ALIGN);

		FUNC9(eth->dev, trxd.rxd1,
				 ring->buf_size, DMA_FROM_DEVICE);
		pktlen = FUNC2(trxd.rxd2);
		skb->dev = netdev;
		FUNC19(skb, pktlen);
		if (trxd.rxd4 & eth->rx_dma_l4_valid)
			skb->ip_summed = CHECKSUM_UNNECESSARY;
		else
			FUNC17(skb);
		skb->protocol = FUNC10(skb, netdev);

		if (netdev->features & NETIF_F_HW_VLAN_CTAG_RX &&
		    FUNC4(trxd.rxd3))
			FUNC5(skb, FUNC11(ETH_P_8021Q),
					       FUNC4(trxd.rxd3));
		FUNC20(skb, 0);
		FUNC16(napi, skb);

		ring->data[idx] = new_data;
		rxd->rxd1 = (unsigned int)dma_addr;

release_desc:
		if (FUNC0(eth->soc->caps, MTK_SOC_MT7628))
			rxd->rxd2 = RX_DMA_LSO;
		else
			rxd->rxd2 = FUNC3(ring->buf_size);

		ring->calc_idx = idx;

		done++;
	}

rx_done:
	if (done) {
		/* make sure that all changes to the dma ring are flushed before
		 * we continue
		 */
		FUNC24();
		FUNC14(eth);
	}

	return done;
}