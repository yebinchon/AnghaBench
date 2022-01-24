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
typedef  scalar_t__ u16 ;
struct sw_rx_data {int /*<<< orphan*/  data; int /*<<< orphan*/  page_offset; } ;
struct sk_buff {int dummy; } ;
struct qede_rx_queue {int dummy; } ;
struct qede_dev {scalar_t__ rx_copybreak; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QEDE_RX_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct qede_rx_queue*,struct sw_rx_data*,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct qede_rx_queue*,struct sw_rx_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct qede_rx_queue*,struct sw_rx_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct qede_rx_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static struct sk_buff *
FUNC11(struct qede_dev *edev,
		  struct qede_rx_queue *rxq,
		  struct sw_rx_data *bd, u16 len, u16 pad)
{
	struct sk_buff *skb = NULL;

	/* For smaller frames still need to allocate skb, memcpy
	 * data and benefit in reusing the page segment instead of
	 * un-mapping it.
	 */
	if ((len + pad <= edev->rx_copybreak)) {
		unsigned int offset = bd->page_offset + pad;

		skb = FUNC1(edev->ndev, QEDE_RX_HDR_SIZE);
		if (FUNC10(!skb))
			return NULL;

		FUNC9(skb, pad);
		FUNC8(skb, FUNC2(bd->data) + offset, len);
		FUNC6(rxq, bd);
		goto out;
	}

	skb = FUNC4(rxq, bd, len, pad);

	if (FUNC10(FUNC5(rxq, bd))) {
		/* Incr page ref count to reuse on allocation failure so
		 * that it doesn't get freed while freeing SKB [as its
		 * already mapped there].
		 */
		FUNC3(bd->data);
		FUNC0(skb);
		return NULL;
	}
out:
	/* We've consumed the first BD and prepared an SKB */
	FUNC7(rxq);

	return skb;
}