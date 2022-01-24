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
struct resource {int /*<<< orphan*/  start; } ;
struct net_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  phydev; } ;
struct cpmac_priv {int ring_size; int /*<<< orphan*/  dma_ring; TYPE_1__* desc_ring; TYPE_1__* rx_head; int /*<<< orphan*/  pdev; int /*<<< orphan*/  regs; int /*<<< orphan*/  napi; int /*<<< orphan*/  reset_work; } ;
struct cpmac_desc {int dummy; } ;
struct TYPE_2__ {scalar_t__ skb; int /*<<< orphan*/  data_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPMAC_MBP ; 
 size_t CPMAC_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPMAC_SKB_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct cpmac_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct resource*) ; 

__attribute__((used)) static int FUNC17(struct net_device *dev)
{
	int i;
	struct cpmac_priv *priv = FUNC11(dev);
	struct resource *mem;

	FUNC12(dev);

	FUNC2(&priv->reset_work);
	FUNC10(&priv->napi);
	FUNC13(dev->phydev);

	FUNC3(dev);

	for (i = 0; i < 8; i++)
		FUNC4(priv->regs, FUNC1(i), 0);
	FUNC4(priv->regs, FUNC0(0), 0);
	FUNC4(priv->regs, CPMAC_MBP, 0);

	FUNC7(dev->irq, dev);
	FUNC8(priv->regs);
	mem = FUNC14(priv->pdev, IORESOURCE_MEM, "regs");
	FUNC15(mem->start, FUNC16(mem));
	priv->rx_head = &priv->desc_ring[CPMAC_QUEUES];
	for (i = 0; i < priv->ring_size; i++) {
		if (priv->rx_head[i].skb) {
			FUNC6(&dev->dev,
					 priv->rx_head[i].data_mapping,
					 CPMAC_SKB_SIZE,
					 DMA_FROM_DEVICE);
			FUNC9(priv->rx_head[i].skb);
		}
	}

	FUNC5(&dev->dev, sizeof(struct cpmac_desc) *
			  (CPMAC_QUEUES + priv->ring_size),
			  priv->desc_ring, priv->dma_ring);

	return 0;
}