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
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct ionic_rxq_desc {int /*<<< orphan*/  addr; int /*<<< orphan*/  len; } ;
struct ionic_rxq_comp {int /*<<< orphan*/  len; } ;
struct ionic_queue {TYPE_2__* lif; } ;
struct ionic_desc_info {struct ionic_rxq_desc* desc; } ;
struct ionic_cq_info {struct ionic_rxq_comp* cq_desc; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {scalar_t__ rx_copybreak; TYPE_1__* ionic; struct net_device* netdev; } ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ionic_queue*,struct ionic_desc_info*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC6 (struct net_device*,scalar_t__) ; 

__attribute__((used)) static bool FUNC7(struct ionic_queue *q, struct ionic_desc_info *desc_info,
			       struct ionic_cq_info *cq_info, struct sk_buff **skb)
{
	struct ionic_rxq_comp *comp = cq_info->cq_desc;
	struct ionic_rxq_desc *desc = desc_info->desc;
	struct net_device *netdev = q->lif->netdev;
	struct device *dev = q->lif->ionic->dev;
	struct sk_buff *new_skb;
	u16 clen, dlen;

	clen = FUNC3(comp->len);
	dlen = FUNC3(desc->len);
	if (clen > q->lif->rx_copybreak) {
		FUNC1(dev, (dma_addr_t)FUNC4(desc->addr),
				 dlen, DMA_FROM_DEVICE);
		return false;
	}

	new_skb = FUNC6(netdev, clen);
	if (!new_skb) {
		FUNC1(dev, (dma_addr_t)FUNC4(desc->addr),
				 dlen, DMA_FROM_DEVICE);
		return false;
	}

	FUNC0(dev, (dma_addr_t)FUNC4(desc->addr),
				clen, DMA_FROM_DEVICE);

	FUNC5(new_skb->data, (*skb)->data, clen);

	FUNC2(q, desc_info, *skb);
	*skb = new_skb;

	return true;
}