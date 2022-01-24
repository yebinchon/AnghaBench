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
struct sk_buff {int* cb; scalar_t__ len; } ;
struct ppp_channel {struct channel* ppp; } ;
struct channel {int /*<<< orphan*/  upl; scalar_t__ ppp; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct sk_buff*,struct channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct ppp_channel *chan, int code)
{
	struct channel *pch = chan->ppp;
	struct sk_buff *skb;

	if (!pch)
		return;

	FUNC2(&pch->upl);
	if (pch->ppp) {
		skb = FUNC0(0, GFP_ATOMIC);
		if (skb) {
			skb->len = 0;		/* probably unnecessary */
			skb->cb[0] = code;
			FUNC1(pch->ppp, skb, pch);
		}
	}
	FUNC3(&pch->upl);
}