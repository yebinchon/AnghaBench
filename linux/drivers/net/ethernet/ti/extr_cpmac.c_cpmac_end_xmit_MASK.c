#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int /*<<< orphan*/  dev; TYPE_1__ stats; } ;
struct cpmac_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; struct cpmac_desc* desc_ring; } ;
struct cpmac_desc {TYPE_2__* skb; int /*<<< orphan*/  data_mapping; scalar_t__ mapping; } ;
struct TYPE_6__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,TYPE_2__*,scalar_t__) ; 
 struct cpmac_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct cpmac_priv*) ; 
 scalar_t__ FUNC11 (struct cpmac_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct net_device *dev, int queue)
{
	struct cpmac_desc *desc;
	struct cpmac_priv *priv = FUNC8(dev);

	desc = &priv->desc_ring[queue];
	FUNC2(priv->regs, FUNC0(queue), (u32)desc->mapping);
	if (FUNC5(desc->skb)) {
		FUNC13(&priv->lock);
		dev->stats.tx_packets++;
		dev->stats.tx_bytes += desc->skb->len;
		FUNC14(&priv->lock);
		FUNC4(&dev->dev, desc->data_mapping, desc->skb->len,
				 DMA_TO_DEVICE);

		if (FUNC15(FUNC10(priv)))
			FUNC7(dev, "sent 0x%p, len=%d\n",
				   desc->skb, desc->skb->len);

		FUNC3(desc->skb);
		desc->skb = NULL;
		if (FUNC1(dev, queue))
			FUNC12(dev, queue);
	} else {
		if (FUNC11(priv) && FUNC6())
			FUNC9(dev, "end_xmit: spurious interrupt\n");
		if (FUNC1(dev, queue))
			FUNC12(dev, queue);
	}
}