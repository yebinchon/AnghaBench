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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int encapsulation; scalar_t__ csum_not_inet; int /*<<< orphan*/  csum_offset; int /*<<< orphan*/  data; } ;
struct ionic_txq_desc {void* csum_offset; void* csum_start; void* vlan_tci; void* len; int /*<<< orphan*/  cmd; } ;
struct ionic_tx_stats {int /*<<< orphan*/  csum; int /*<<< orphan*/  crc32_csum; } ;
struct ionic_queue {TYPE_3__* lif; TYPE_1__* head; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  nr_frags; } ;
struct TYPE_7__ {TYPE_2__* ionic; } ;
struct TYPE_6__ {struct device* dev; } ;
struct TYPE_5__ {struct ionic_txq_desc* desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IONIC_TXQ_DESC_FLAG_ENCAP ; 
 int /*<<< orphan*/  IONIC_TXQ_DESC_FLAG_VLAN ; 
 int /*<<< orphan*/  IONIC_TXQ_DESC_OPCODE_CSUM_PARTIAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ionic_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ionic_tx_stats* FUNC5 (struct ionic_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 TYPE_4__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct ionic_queue *q, struct sk_buff *skb)
{
	struct ionic_tx_stats *stats = FUNC5(q);
	struct ionic_txq_desc *desc = q->head->desc;
	struct device *dev = q->lif->ionic->dev;
	dma_addr_t dma_addr;
	bool has_vlan;
	u8 flags = 0;
	bool encap;
	u64 cmd;

	has_vlan = !!FUNC10(skb);
	encap = skb->encapsulation;

	dma_addr = FUNC4(q, skb->data, FUNC7(skb));
	if (FUNC2(dev, dma_addr))
		return -ENOMEM;

	flags |= has_vlan ? IONIC_TXQ_DESC_FLAG_VLAN : 0;
	flags |= encap ? IONIC_TXQ_DESC_FLAG_ENCAP : 0;

	cmd = FUNC3(IONIC_TXQ_DESC_OPCODE_CSUM_PARTIAL,
				  flags, FUNC8(skb)->nr_frags, dma_addr);
	desc->cmd = FUNC1(cmd);
	desc->len = FUNC0(FUNC7(skb));
	desc->vlan_tci = FUNC0(FUNC9(skb));
	desc->csum_start = FUNC0(FUNC6(skb));
	desc->csum_offset = FUNC0(skb->csum_offset);

	if (skb->csum_not_inet)
		stats->crc32_csum++;
	else
		stats->csum++;

	return 0;
}