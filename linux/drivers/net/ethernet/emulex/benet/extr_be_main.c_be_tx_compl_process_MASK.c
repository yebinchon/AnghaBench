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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct be_queue_info {size_t tail; } ;
struct be_tx_obj {struct be_queue_info q; struct sk_buff** sent_skb_list; } ;
struct be_eth_wrb {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_queue_info*) ; 
 struct be_eth_wrb* FUNC2 (struct be_queue_info*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct be_eth_wrb*,int) ; 

__attribute__((used)) static u16 FUNC5(struct be_adapter *adapter,
			       struct be_tx_obj *txo, u16 last_index)
{
	struct sk_buff **sent_skbs = txo->sent_skb_list;
	struct be_queue_info *txq = &txo->q;
	struct sk_buff *skb = NULL;
	bool unmap_skb_hdr = false;
	struct be_eth_wrb *wrb;
	u16 num_wrbs = 0;
	u32 frag_index;

	do {
		if (sent_skbs[txq->tail]) {
			/* Free skb from prev req */
			if (skb)
				FUNC0(skb);
			skb = sent_skbs[txq->tail];
			sent_skbs[txq->tail] = NULL;
			FUNC1(txq);  /* skip hdr wrb */
			num_wrbs++;
			unmap_skb_hdr = true;
		}
		wrb = FUNC2(txq);
		frag_index = txq->tail;
		FUNC4(&adapter->pdev->dev, wrb,
			      (unmap_skb_hdr && FUNC3(skb)));
		unmap_skb_hdr = false;
		FUNC1(txq);
		num_wrbs++;
	} while (frag_index != last_index);
	FUNC0(skb);

	return num_wrbs;
}