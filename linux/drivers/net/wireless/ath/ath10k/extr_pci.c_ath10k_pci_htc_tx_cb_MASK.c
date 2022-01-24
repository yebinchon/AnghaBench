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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ath10k_ce_pipe {struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct ath10k_ce_pipe*,void**) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct ath10k_ce_pipe *ce_state)
{
	struct ath10k *ar = ce_state->ar;
	struct sk_buff_head list;
	struct sk_buff *skb;

	FUNC1(&list);
	while (FUNC3(ce_state, (void **)&skb) == 0) {
		/* no need to call tx completion for NULL pointers */
		if (skb == NULL)
			continue;

		FUNC2(&list, skb);
	}

	while ((skb = FUNC0(&list)))
		FUNC4(ar, skb);
}