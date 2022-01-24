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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct ltq_etop_priv {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {size_t desc; struct ltq_dma_desc* desc_base; } ;
struct ltq_etop_chan {int /*<<< orphan*/  netdev; TYPE_1__ dma; struct sk_buff** skb; } ;
struct ltq_dma_desc {int ctl; } ;

/* Variables and functions */
 size_t LTQ_DESC_NUM ; 
 int LTQ_DMA_SIZE_MASK ; 
 int MAX_DMA_CRC_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct ltq_etop_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct ltq_etop_priv* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC9(struct ltq_etop_chan *ch)
{
	struct ltq_etop_priv *priv = FUNC4(ch->netdev);
	struct ltq_dma_desc *desc = &ch->dma.desc_base[ch->dma.desc];
	struct sk_buff *skb = ch->skb[ch->dma.desc];
	int len = (desc->ctl & LTQ_DMA_SIZE_MASK) - MAX_DMA_CRC_LEN;
	unsigned long flags;

	FUNC7(&priv->lock, flags);
	if (FUNC2(ch)) {
		FUNC3(ch->netdev,
			"failed to allocate new rx buffer, stopping DMA\n");
		FUNC1(&ch->dma);
	}
	ch->dma.desc++;
	ch->dma.desc %= LTQ_DESC_NUM;
	FUNC8(&priv->lock, flags);

	FUNC6(skb, len);
	skb->protocol = FUNC0(skb, ch->netdev);
	FUNC5(skb);
}