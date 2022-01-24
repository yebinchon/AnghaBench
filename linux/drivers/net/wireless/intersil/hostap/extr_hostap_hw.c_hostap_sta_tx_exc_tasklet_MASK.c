#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; scalar_t__ data; } ;
struct hfa384x_tx_frame {int /*<<< orphan*/  frame_control; } ;
struct TYPE_3__ {int /*<<< orphan*/  sta_tx_exc_list; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	local_info_t *local = (local_info_t *) data;
	struct sk_buff *skb;

	while ((skb = FUNC4(&local->sta_tx_exc_list)) != NULL) {
		struct hfa384x_tx_frame *txdesc =
			(struct hfa384x_tx_frame *) skb->data;

		if (skb->len >= sizeof(*txdesc)) {
			/* Convert Prism2 RX structure into IEEE 802.11 header
			 */
			int hdrlen = FUNC1(txdesc->frame_control);
			FUNC3(FUNC5(skb, sizeof(*txdesc) - hdrlen),
				&txdesc->frame_control, hdrlen);

			FUNC2(local, skb);
		}
		FUNC0(skb);
	}
}