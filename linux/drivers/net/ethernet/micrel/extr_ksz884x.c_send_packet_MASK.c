#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; scalar_t__ ip_summed; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_5__ stats; } ;
struct ksz_desc_info {struct ksz_desc* cur; } ;
struct ksz_hw {int dev_count; int dst_ports; int /*<<< orphan*/  tx_int_cnt; struct ksz_desc_info tx_desc_info; } ;
struct ksz_dma_buf {int len; struct sk_buff* skb; void* dma; } ;
struct TYPE_8__ {int csum_gen_tcp; int csum_gen_udp; } ;
struct TYPE_9__ {TYPE_2__ tx; } ;
struct TYPE_10__ {TYPE_3__ buf; } ;
struct ksz_desc {TYPE_4__ sw; } ;
struct TYPE_7__ {int first_port; } ;
struct dev_priv {TYPE_1__ port; struct dev_info* adapter; } ;
struct dev_info {int /*<<< orphan*/  pdev; struct ksz_hw hw; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_12__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 struct ksz_dma_buf* FUNC0 (struct ksz_desc*) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_desc_info*,struct ksz_desc**) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*) ; 
 struct dev_priv* FUNC3 (struct net_device*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ksz_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ksz_desc*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct ksz_desc*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct sk_buff*) ; 
 TYPE_6__* FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC12(struct sk_buff *skb, struct net_device *dev)
{
	struct ksz_desc *desc;
	struct ksz_desc *first;
	struct dev_priv *priv = FUNC3(dev);
	struct dev_info *hw_priv = priv->adapter;
	struct ksz_hw *hw = &hw_priv->hw;
	struct ksz_desc_info *info = &hw->tx_desc_info;
	struct ksz_dma_buf *dma_buf;
	int len;
	int last_frag = FUNC11(skb)->nr_frags;

	/*
	 * KSZ8842 with multiple device interfaces needs to be told which port
	 * to send.
	 */
	if (hw->dev_count > 1)
		hw->dst_ports = 1 << priv->port.first_port;

	/* Hardware will pad the length to 60. */
	len = skb->len;

	/* Remember the very first descriptor. */
	first = info->cur;
	desc = first;

	dma_buf = FUNC0(desc);
	if (last_frag) {
		int frag;
		skb_frag_t *this_frag;

		dma_buf->len = FUNC10(skb);

		dma_buf->dma = FUNC4(
			hw_priv->pdev, skb->data, dma_buf->len,
			PCI_DMA_TODEVICE);
		FUNC6(desc, dma_buf->dma);
		FUNC7(desc, dma_buf->len);

		frag = 0;
		do {
			this_frag = &FUNC11(skb)->frags[frag];

			/* Get a new descriptor. */
			FUNC1(info, &desc);

			/* Keep track of descriptors used so far. */
			++hw->tx_int_cnt;

			dma_buf = FUNC0(desc);
			dma_buf->len = FUNC9(this_frag);

			dma_buf->dma = FUNC4(
				hw_priv->pdev,
				FUNC8(this_frag),
				dma_buf->len,
				PCI_DMA_TODEVICE);
			FUNC6(desc, dma_buf->dma);
			FUNC7(desc, dma_buf->len);

			frag++;
			if (frag == last_frag)
				break;

			/* Do not release the last descriptor here. */
			FUNC5(desc);
		} while (1);

		/* current points to the last descriptor. */
		info->cur = desc;

		/* Release the first descriptor. */
		FUNC5(first);
	} else {
		dma_buf->len = len;

		dma_buf->dma = FUNC4(
			hw_priv->pdev, skb->data, dma_buf->len,
			PCI_DMA_TODEVICE);
		FUNC6(desc, dma_buf->dma);
		FUNC7(desc, dma_buf->len);
	}

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		(desc)->sw.buf.tx.csum_gen_tcp = 1;
		(desc)->sw.buf.tx.csum_gen_udp = 1;
	}

	/*
	 * The last descriptor holds the packet so that it can be returned to
	 * network subsystem after all descriptors are transmitted.
	 */
	dma_buf->skb = skb;

	FUNC2(hw);

	/* Update transmit statistics. */
	dev->stats.tx_packets++;
	dev->stats.tx_bytes += len;
}