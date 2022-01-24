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
typedef  void* u32 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct net_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  phydev; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct cpmac_priv {size_t ring_size; int /*<<< orphan*/  regs; scalar_t__ dma_ring; struct cpmac_desc* desc_ring; struct cpmac_desc* rx_head; int /*<<< orphan*/  napi; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  reset_pending; int /*<<< orphan*/  pdev; } ;
struct cpmac_desc {struct sk_buff* skb; scalar_t__ data_mapping; void* hw_next; struct cpmac_desc* prev; scalar_t__ mapping; struct cpmac_desc* next; int /*<<< orphan*/  dataflags; int /*<<< orphan*/  buflen; void* hw_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPMAC_OWN ; 
 size_t CPMAC_QUEUES ; 
 int /*<<< orphan*/  CPMAC_SKB_SIZE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpmac_hw_error ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  cpmac_irq ; 
 struct cpmac_desc* FUNC3 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,struct cpmac_desc*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC11 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*) ; 
 struct cpmac_priv* FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (struct cpmac_priv*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct resource*) ; 
 scalar_t__ FUNC21 (int) ; 

__attribute__((used)) static int FUNC22(struct net_device *dev)
{
	int i, size, res;
	struct cpmac_priv *priv = FUNC13(dev);
	struct resource *mem;
	struct cpmac_desc *desc;
	struct sk_buff *skb;

	mem = FUNC16(priv->pdev, IORESOURCE_MEM, "regs");
	if (!FUNC19(mem->start, FUNC20(mem), dev->name)) {
		if (FUNC14(priv))
			FUNC12(dev, "failed to request registers\n");

		res = -ENXIO;
		goto fail_reserve;
	}

	priv->regs = FUNC7(mem->start, FUNC20(mem));
	if (!priv->regs) {
		if (FUNC14(priv))
			FUNC12(dev, "failed to remap registers\n");

		res = -ENXIO;
		goto fail_remap;
	}

	size = priv->ring_size + CPMAC_QUEUES;
	priv->desc_ring = FUNC3(&dev->dev,
					     sizeof(struct cpmac_desc) * size,
					     &priv->dma_ring,
					     GFP_KERNEL);
	if (!priv->desc_ring) {
		res = -ENOMEM;
		goto fail_alloc;
	}

	for (i = 0; i < size; i++)
		priv->desc_ring[i].mapping = priv->dma_ring + sizeof(*desc) * i;

	priv->rx_head = &priv->desc_ring[CPMAC_QUEUES];
	for (i = 0, desc = priv->rx_head; i < priv->ring_size; i++, desc++) {
		skb = FUNC11(dev, CPMAC_SKB_SIZE);
		if (FUNC21(!skb)) {
			res = -ENOMEM;
			goto fail_desc;
		}
		desc->skb = skb;
		desc->data_mapping = FUNC5(&dev->dev, skb->data,
						    CPMAC_SKB_SIZE,
						    DMA_FROM_DEVICE);
		desc->hw_data = (u32)desc->data_mapping;
		desc->buflen = CPMAC_SKB_SIZE;
		desc->dataflags = CPMAC_OWN;
		desc->next = &priv->rx_head[(i + 1) % priv->ring_size];
		desc->next->prev = desc;
		desc->hw_next = (u32)desc->next->mapping;
	}

	priv->rx_head->prev->hw_next = (u32)0;

	res = FUNC18(dev->irq, cpmac_irq, IRQF_SHARED, dev->name, dev);
	if (res) {
		if (FUNC14(priv))
			FUNC12(dev, "failed to obtain irq\n");

		goto fail_irq;
	}

	FUNC1(&priv->reset_pending, 0);
	FUNC0(&priv->reset_work, cpmac_hw_error);
	FUNC2(dev);

	FUNC10(&priv->napi);
	FUNC15(dev->phydev);

	return 0;

fail_irq:
fail_desc:
	for (i = 0; i < priv->ring_size; i++) {
		if (priv->rx_head[i].skb) {
			FUNC6(&dev->dev,
					 priv->rx_head[i].data_mapping,
					 CPMAC_SKB_SIZE,
					 DMA_FROM_DEVICE);
			FUNC9(priv->rx_head[i].skb);
		}
	}
	FUNC4(&dev->dev, sizeof(struct cpmac_desc) * size,
			  priv->desc_ring, priv->dma_ring);

fail_alloc:
	FUNC8(priv->regs);

fail_remap:
	FUNC17(mem->start, FUNC20(mem));

fail_reserve:
	return res;
}