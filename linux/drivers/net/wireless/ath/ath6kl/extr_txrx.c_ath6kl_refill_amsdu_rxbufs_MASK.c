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
struct sk_buff {scalar_t__ data; scalar_t__ head; } ;
struct htc_packet {int /*<<< orphan*/  list; struct sk_buff* skb; } ;
struct ath6kl {int /*<<< orphan*/  lock; int /*<<< orphan*/  amsdu_rx_buffer_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_AMSDU_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct htc_packet*,struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct ath6kl *ar, int count)
{
	struct htc_packet *packet;
	struct sk_buff *skb;

	while (count) {
		skb = FUNC2(ATH6KL_AMSDU_BUFFER_SIZE);
		if (!skb)
			return;

		packet = (struct htc_packet *) skb->head;
		if (!FUNC0((unsigned long) skb->data, 4)) {
			size_t len = FUNC5(skb);
			skb->data = FUNC1(skb->data - 4, 4);
			FUNC6(skb, len);
		}
		FUNC4(packet, skb, skb->data,
				   ATH6KL_AMSDU_BUFFER_SIZE, 0);
		packet->skb = skb;

		FUNC7(&ar->lock);
		FUNC3(&packet->list, &ar->amsdu_rx_buffer_queue);
		FUNC8(&ar->lock);
		count--;
	}
}