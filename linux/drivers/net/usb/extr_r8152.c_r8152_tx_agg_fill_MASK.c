#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_complete_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct tx_desc {int dummy; } ;
struct tx_agg {int /*<<< orphan*/  urb; int /*<<< orphan*/ * head; scalar_t__ skb_num; scalar_t__ skb_len; } ;
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sk_buff {int len; } ;
struct r8152 {scalar_t__ tx_qlen; int /*<<< orphan*/  intf; int /*<<< orphan*/  udev; TYPE_2__* netdev; struct sk_buff_head tx_queue; int /*<<< orphan*/  flags; } ;
struct net_device_stats {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_7__ {struct net_device_stats stats; } ;
struct TYPE_6__ {scalar_t__ gso_segs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELL_TB_RX_AGG_BUG ; 
 int ETH_ZLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int agg_buf_sz ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct r8152*,struct sk_buff*,struct sk_buff_head*) ; 
 scalar_t__ FUNC9 (struct r8152*,struct tx_desc*,struct sk_buff*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct tx_desc*,struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff_head*) ; 
 scalar_t__ FUNC13 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff_head*,struct sk_buff_head*) ; 
 TYPE_1__* FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct tx_agg*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int) ; 
 int FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ write_bulk_callback ; 

__attribute__((used)) static int FUNC27(struct r8152 *tp, struct tx_agg *agg)
{
	struct sk_buff_head skb_head, *tx_queue = &tp->tx_queue;
	int remain, ret;
	u8 *tx_data;

	FUNC2(&skb_head);
	FUNC18(&tx_queue->lock);
	FUNC15(tx_queue, &skb_head);
	FUNC19(&tx_queue->lock);

	tx_data = agg->head;
	agg->skb_num = 0;
	agg->skb_len = 0;
	remain = agg_buf_sz;

	while (remain >= ETH_ZLEN + sizeof(struct tx_desc)) {
		struct tx_desc *tx_desc;
		struct sk_buff *skb;
		unsigned int len;
		u32 offset;

		skb = FUNC0(&skb_head);
		if (!skb)
			break;

		len = skb->len + sizeof(*tx_desc);

		if (len > remain) {
			FUNC1(&skb_head, skb);
			break;
		}

		tx_data = FUNC21(tx_data);
		tx_desc = (struct tx_desc *)tx_data;

		offset = (u32)FUNC17(skb);

		if (FUNC9(tp, tx_desc, skb, skb->len, offset)) {
			FUNC8(tp, skb, &skb_head);
			continue;
		}

		FUNC10(tx_desc, skb);

		tx_data += sizeof(*tx_desc);

		len = skb->len;
		if (FUNC11(skb, 0, tx_data, len) < 0) {
			struct net_device_stats *stats = &tp->netdev->stats;

			stats->tx_dropped++;
			FUNC3(skb);
			tx_data -= sizeof(*tx_desc);
			continue;
		}

		tx_data += len;
		agg->skb_len += len;
		agg->skb_num += FUNC16(skb)->gso_segs ?: 1;

		FUNC3(skb);

		remain = agg_buf_sz - (int)(FUNC21(tx_data) - agg->head);

		if (FUNC20(DELL_TB_RX_AGG_BUG, &tp->flags))
			break;
	}

	if (!FUNC12(&skb_head)) {
		FUNC18(&tx_queue->lock);
		FUNC14(&skb_head, tx_queue);
		FUNC19(&tx_queue->lock);
	}

	FUNC5(tp->netdev);

	if (FUNC4(tp->netdev) &&
	    FUNC13(&tp->tx_queue) < tp->tx_qlen)
		FUNC7(tp->netdev);

	FUNC6(tp->netdev);

	ret = FUNC22(tp->intf);
	if (ret < 0)
		goto out_tx_fill;

	FUNC24(agg->urb, tp->udev, FUNC25(tp->udev, 2),
			  agg->head, (int)(tx_data - (u8 *)agg->head),
			  (usb_complete_t)write_bulk_callback, agg);

	ret = FUNC26(agg->urb, GFP_ATOMIC);
	if (ret < 0)
		FUNC23(tp->intf);

out_tx_fill:
	return ret;
}