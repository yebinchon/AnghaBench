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
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct be_wrb_params {int dummy; } ;
struct be_queue_info {int /*<<< orphan*/  used; } ;
struct be_tx_obj {size_t last_req_hdr; int /*<<< orphan*/  pend_wrb_cnt; scalar_t__ last_req_wrb_cnt; struct sk_buff** sent_skb_list; struct be_queue_info q; } ;
struct be_eth_hdr_wrb {int dummy; } ;
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct be_eth_hdr_wrb*,int) ; 
 struct be_eth_hdr_wrb* FUNC3 (struct be_queue_info*,size_t) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_adapter*,struct be_eth_hdr_wrb*,struct be_wrb_params*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct be_adapter *adapter,
				struct be_tx_obj *txo,
				struct be_wrb_params *wrb_params,
				struct sk_buff *skb, u16 head)
{
	u32 num_frags = FUNC4(skb);
	struct be_queue_info *txq = &txo->q;
	struct be_eth_hdr_wrb *hdr = FUNC3(txq, head);

	FUNC5(adapter, hdr, wrb_params, skb);
	FUNC2(hdr, sizeof(*hdr));

	FUNC0(txo->sent_skb_list[head]);
	txo->sent_skb_list[head] = skb;
	txo->last_req_hdr = head;
	FUNC1(num_frags, &txq->used);
	txo->last_req_wrb_cnt = num_frags;
	txo->pend_wrb_cnt += num_frags;
}