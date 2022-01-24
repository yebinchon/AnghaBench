#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; int /*<<< orphan*/  dev; } ;
struct gelic_descr {int /*<<< orphan*/  next; scalar_t__ next_descr_addr; scalar_t__ data_status; struct sk_buff* skb; void* buf_size; void* buf_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  head; } ;
struct gelic_card {TYPE_2__ tx_chain; TYPE_1__* vlan; scalar_t__ vlan_required; } ;
typedef  enum gelic_port_type { ____Placeholder_gelic_port_type } gelic_port_type ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int type; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gelic_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gelic_descr*,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct gelic_card *card,
				  struct gelic_descr *descr,
				  struct sk_buff *skb)
{
	dma_addr_t buf;

	if (card->vlan_required) {
		struct sk_buff *skb_tmp;
		enum gelic_port_type type;

		type = FUNC6(skb->dev)->type;
		skb_tmp = FUNC5(skb,
					     card->vlan[type].tx);
		if (!skb_tmp)
			return -ENOMEM;
		skb = skb_tmp;
	}

	buf = FUNC3(FUNC1(card), skb->data, skb->len, DMA_TO_DEVICE);

	if (!buf) {
		FUNC2(FUNC1(card),
			"dma map 2 failed (%p, %i). Dropping packet\n",
			skb->data, skb->len);
		return -ENOMEM;
	}

	descr->buf_addr = FUNC0(buf);
	descr->buf_size = FUNC0(skb->len);
	descr->skb = skb;
	descr->data_status = 0;
	descr->next_descr_addr = 0; /* terminate hw descr */
	FUNC4(descr, skb);

	/* bump free descriptor pointer */
	card->tx_chain.head = descr->next;
	return 0;
}