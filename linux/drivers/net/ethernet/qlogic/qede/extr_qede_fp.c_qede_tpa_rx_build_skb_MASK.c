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
typedef  int /*<<< orphan*/  u16 ;
struct sw_rx_data {scalar_t__ page_offset; int /*<<< orphan*/  data; } ;
struct sk_buff {int dummy; } ;
struct qede_rx_queue {scalar_t__ rx_buf_seg_size; } ;
struct qede_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qede_rx_queue*,int) ; 
 struct sk_buff* FUNC4 (struct qede_rx_queue*,struct sw_rx_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qede_rx_queue*,struct sw_rx_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct qede_rx_queue*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC8(struct qede_dev *edev,
		      struct qede_rx_queue *rxq,
		      struct sw_rx_data *bd, u16 len, u16 pad,
		      bool alloc_skb)
{
	struct sk_buff *skb;

	skb = FUNC4(rxq, bd, len, pad);
	bd->page_offset += rxq->rx_buf_seg_size;

	if (bd->page_offset == PAGE_SIZE) {
		if (FUNC7(FUNC3(rxq, true))) {
			FUNC0(edev,
				  "Failed to allocate RX buffer for tpa start\n");
			bd->page_offset -= rxq->rx_buf_seg_size;
			FUNC2(bd->data);
			FUNC1(skb);
			return NULL;
		}
	} else {
		FUNC2(bd->data);
		FUNC5(rxq, bd);
	}

	/* We've consumed the first BD and prepared an SKB */
	FUNC6(rxq);

	return skb;
}