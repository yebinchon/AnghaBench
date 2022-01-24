#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  protocol; } ;
struct cpmac_priv {TYPE_2__* dev; int /*<<< orphan*/  regs; } ;
struct cpmac_desc {int /*<<< orphan*/  dataflags; int /*<<< orphan*/  buflen; scalar_t__ data_mapping; scalar_t__ hw_data; struct sk_buff* skb; scalar_t__ datalen; scalar_t__ mapping; } ;
struct TYPE_8__ {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_9__ {TYPE_1__ stats; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPMAC_OWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPMAC_SKB_SIZE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct cpmac_desc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,TYPE_2__*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 () ; 
 struct sk_buff* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 
 int FUNC12 (struct cpmac_priv*) ; 
 int FUNC13 (struct cpmac_priv*) ; 
 scalar_t__ FUNC14 (struct cpmac_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC18(struct cpmac_priv *priv,
				    struct cpmac_desc *desc)
{
	struct sk_buff *skb, *result = NULL;

	if (FUNC17(FUNC12(priv)))
		FUNC1(priv->dev, desc);
	FUNC3(priv->regs, FUNC0(0), (u32)desc->mapping);
	if (FUNC17(!desc->datalen)) {
		if (FUNC14(priv) && FUNC8())
			FUNC11(priv->dev, "rx: spurious interrupt\n");

		return NULL;
	}

	skb = FUNC9(priv->dev, CPMAC_SKB_SIZE);
	if (FUNC7(skb)) {
		FUNC16(desc->skb, desc->datalen);
		desc->skb->protocol = FUNC6(desc->skb, priv->dev);
		FUNC15(desc->skb);
		priv->dev->stats.rx_packets++;
		priv->dev->stats.rx_bytes += desc->datalen;
		result = desc->skb;
		FUNC5(&priv->dev->dev, desc->data_mapping,
				 CPMAC_SKB_SIZE, DMA_FROM_DEVICE);
		desc->skb = skb;
		desc->data_mapping = FUNC4(&priv->dev->dev, skb->data,
						    CPMAC_SKB_SIZE,
						    DMA_FROM_DEVICE);
		desc->hw_data = (u32)desc->data_mapping;
		if (FUNC17(FUNC13(priv))) {
			FUNC10(priv->dev, "received packet:\n");
			FUNC2(priv->dev, result);
		}
	} else {
		if (FUNC14(priv) && FUNC8())
			FUNC11(priv->dev,
				    "low on skbs, dropping packet\n");

		priv->dev->stats.rx_dropped++;
	}

	desc->buflen = CPMAC_SKB_SIZE;
	desc->dataflags = CPMAC_OWN;

	return result;
}