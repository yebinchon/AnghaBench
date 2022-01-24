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
struct sk_buff {int dummy; } ;
struct ath10k {int /*<<< orphan*/  hw; int /*<<< orphan*/  offchan_tx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ath10k *ar)
{
	struct sk_buff *skb;

	for (;;) {
		skb = FUNC1(&ar->offchan_tx_queue);
		if (!skb)
			break;

		FUNC0(ar->hw, skb);
	}
}