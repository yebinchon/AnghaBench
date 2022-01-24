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
typedef  int u32 ;
typedef  int u16 ;
struct stmmac_tx_queue {int cur_tx; struct dma_desc* dma_tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  vlins; } ;
struct stmmac_priv {TYPE_1__ dma_cap; } ;
struct sk_buff {scalar_t__ vlan_proto; } ;
struct dma_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TX_SIZE ; 
 int /*<<< orphan*/  ETH_P_8021AD ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int STMMAC_VLAN_INSERT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct stmmac_priv*,struct dma_desc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct stmmac_priv*,struct dma_desc*) ; 

__attribute__((used)) static bool FUNC6(struct stmmac_priv *priv, struct sk_buff *skb,
			       struct stmmac_tx_queue *tx_q)
{
	u16 tag = 0x0, inner_tag = 0x0;
	u32 inner_type = 0x0;
	struct dma_desc *p;

	if (!priv->dma_cap.vlins)
		return false;
	if (!FUNC3(skb))
		return false;
	if (skb->vlan_proto == FUNC1(ETH_P_8021AD)) {
		inner_tag = FUNC2(skb);
		inner_type = STMMAC_VLAN_INSERT;
	}

	tag = FUNC2(skb);

	p = tx_q->dma_tx + tx_q->cur_tx;
	if (FUNC4(priv, p, tag, inner_tag, inner_type))
		return false;

	FUNC5(priv, p);
	tx_q->cur_tx = FUNC0(tx_q->cur_tx, DMA_TX_SIZE);
	return true;
}