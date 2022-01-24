#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct page {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {int /*<<< orphan*/  dev; TYPE_3__ stats; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct nb8800_rx_desc {TYPE_2__ desc; } ;
struct nb8800_priv {int /*<<< orphan*/  napi; TYPE_1__* rx_bufs; struct nb8800_rx_desc* rx_descs; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  nr_frags; } ;
struct TYPE_5__ {int offset; struct page* page; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 unsigned int RX_COPYBREAK ; 
 unsigned int RX_COPYHDR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int FUNC7 (struct net_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*) ; 
 struct nb8800_priv* FUNC9 (struct net_device*) ; 
 void* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,void*,unsigned int) ; 
 TYPE_4__* FUNC13 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC14(struct net_device *dev, unsigned int i,
			   unsigned int len)
{
	struct nb8800_priv *priv = FUNC9(dev);
	struct nb8800_rx_desc *rxd = &priv->rx_descs[i];
	struct page *page = priv->rx_bufs[i].page;
	int offset = priv->rx_bufs[i].offset;
	void *data = FUNC10(page) + offset;
	dma_addr_t dma = rxd->desc.s_addr;
	struct sk_buff *skb;
	unsigned int size;
	int err;

	size = len <= RX_COPYBREAK ? len : RX_COPYHDR;

	skb = FUNC5(&priv->napi, size);
	if (!skb) {
		FUNC8(dev, "rx skb allocation failed\n");
		dev->stats.rx_dropped++;
		return;
	}

	if (len <= RX_COPYBREAK) {
		FUNC1(&dev->dev, dma, len, DMA_FROM_DEVICE);
		FUNC12(skb, data, len);
		FUNC2(&dev->dev, dma, len,
					   DMA_FROM_DEVICE);
	} else {
		err = FUNC7(dev, i, true);
		if (err) {
			FUNC8(dev, "rx buffer allocation failed\n");
			dev->stats.rx_dropped++;
			FUNC0(skb);
			return;
		}

		FUNC3(&dev->dev, dma, RX_BUF_SIZE, DMA_FROM_DEVICE);
		FUNC12(skb, data, RX_COPYHDR);
		FUNC11(skb, FUNC13(skb)->nr_frags, page,
				offset + RX_COPYHDR, len - RX_COPYHDR,
				RX_BUF_SIZE);
	}

	skb->protocol = FUNC4(skb, dev);
	FUNC6(&priv->napi, skb);
}