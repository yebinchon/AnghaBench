#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct TYPE_13__ {TYPE_5__* orig; } ;
struct TYPE_11__ {TYPE_5__* orig; } ;
struct TYPE_10__ {int /*<<< orphan*/  orig; } ;
struct TYPE_8__ {TYPE_5__* orig; } ;
struct fe_priv {scalar_t__ desc_ver; TYPE_7__* rx_skb; TYPE_7__* get_rx_ctx; int /*<<< orphan*/  last_rx_ctx; TYPE_6__ rx_ring; TYPE_4__ get_rx; TYPE_3__ last_rx; int /*<<< orphan*/  swstats_rx_syncp; int /*<<< orphan*/  napi; TYPE_2__* pci_dev; TYPE_1__ put_rx; } ;
struct TYPE_14__ {struct sk_buff* skb; int /*<<< orphan*/  dma_len; int /*<<< orphan*/  dma; } ;
struct TYPE_12__ {int /*<<< orphan*/  flaglen; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 scalar_t__ DESC_VER_1 ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int LEN_MASK_V1 ; 
 int LEN_MASK_V2 ; 
 int NV_RX2_CHECKSUMMASK ; 
 int NV_RX2_CHECKSUM_IP_TCP ; 
 int NV_RX2_CHECKSUM_IP_UDP ; 
 int NV_RX2_DESCRIPTORVALID ; 
 int NV_RX2_ERROR ; 
 int NV_RX2_ERROR4 ; 
 int NV_RX2_ERROR_MASK ; 
 int NV_RX2_FRAMINGERR ; 
 int NV_RX2_SUBTRACT1 ; 
 int NV_RX_AVAIL ; 
 int NV_RX_DESCRIPTORVALID ; 
 int NV_RX_ERROR ; 
 int NV_RX_ERROR4 ; 
 int NV_RX_ERROR_MASK ; 
 int NV_RX_FRAMINGERR ; 
 int NV_RX_SUBTRACT1 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct fe_priv* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,struct fe_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  stat_rx_bytes ; 
 int /*<<< orphan*/  stat_rx_packets ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev, int limit)
{
	struct fe_priv *np = FUNC6(dev);
	u32 flags;
	int rx_work = 0;
	struct sk_buff *skb;
	int len;

	while ((np->get_rx.orig != np->put_rx.orig) &&
	      !((flags = FUNC3(np->get_rx.orig->flaglen)) & NV_RX_AVAIL) &&
		(rx_work < limit)) {

		/*
		 * the packet is for us - immediately tear down the pci mapping.
		 * TODO: check if a prefetch of the first cacheline improves
		 * the performance.
		 */
		FUNC1(&np->pci_dev->dev, np->get_rx_ctx->dma,
				 np->get_rx_ctx->dma_len,
				 DMA_FROM_DEVICE);
		skb = np->get_rx_ctx->skb;
		np->get_rx_ctx->skb = NULL;

		/* look at what we actually got: */
		if (np->desc_ver == DESC_VER_1) {
			if (FUNC4(flags & NV_RX_DESCRIPTORVALID)) {
				len = flags & LEN_MASK_V1;
				if (FUNC14(flags & NV_RX_ERROR)) {
					if ((flags & NV_RX_ERROR_MASK) == NV_RX_ERROR4) {
						len = FUNC7(dev, skb->data, len);
						if (len < 0) {
							FUNC0(skb);
							goto next_pkt;
						}
					}
					/* framing errors are soft errors */
					else if ((flags & NV_RX_ERROR_MASK) == NV_RX_FRAMINGERR) {
						if (flags & NV_RX_SUBTRACT1)
							len--;
					}
					/* the rest are hard errors */
					else {
						FUNC10(flags, np);
						FUNC0(skb);
						goto next_pkt;
					}
				}
			} else {
				FUNC0(skb);
				goto next_pkt;
			}
		} else {
			if (FUNC4(flags & NV_RX2_DESCRIPTORVALID)) {
				len = flags & LEN_MASK_V2;
				if (FUNC14(flags & NV_RX2_ERROR)) {
					if ((flags & NV_RX2_ERROR_MASK) == NV_RX2_ERROR4) {
						len = FUNC7(dev, skb->data, len);
						if (len < 0) {
							FUNC0(skb);
							goto next_pkt;
						}
					}
					/* framing errors are soft errors */
					else if ((flags & NV_RX2_ERROR_MASK) == NV_RX2_FRAMINGERR) {
						if (flags & NV_RX2_SUBTRACT1)
							len--;
					}
					/* the rest are hard errors */
					else {
						FUNC0(skb);
						goto next_pkt;
					}
				}
				if (((flags & NV_RX2_CHECKSUMMASK) == NV_RX2_CHECKSUM_IP_TCP) || /*ip and tcp */
				    ((flags & NV_RX2_CHECKSUMMASK) == NV_RX2_CHECKSUM_IP_UDP))   /*ip and udp */
					skb->ip_summed = CHECKSUM_UNNECESSARY;
			} else {
				FUNC0(skb);
				goto next_pkt;
			}
		}
		/* got a valid packet - forward it to the network core */
		FUNC11(skb, len);
		skb->protocol = FUNC2(skb, dev);
		FUNC5(&np->napi, skb);
		FUNC12(&np->swstats_rx_syncp);
		FUNC9(stat_rx_packets);
		FUNC8(stat_rx_bytes, len);
		FUNC13(&np->swstats_rx_syncp);
next_pkt:
		if (FUNC14(np->get_rx.orig++ == np->last_rx.orig))
			np->get_rx.orig = np->rx_ring.orig;
		if (FUNC14(np->get_rx_ctx++ == np->last_rx_ctx))
			np->get_rx_ctx = np->rx_skb;

		rx_work++;
	}

	return rx_work;
}