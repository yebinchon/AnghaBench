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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  xq; } ;
struct ppp {int /*<<< orphan*/  dev; TYPE_1__ file; int /*<<< orphan*/  xmit_pending; int /*<<< orphan*/  closing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC4 (struct ppp*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC6 (struct ppp*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC10(struct ppp *ppp, struct sk_buff *skb)
{
	FUNC5(ppp);
	if (!ppp->closing) {
		FUNC3(ppp);

		if (skb)
			FUNC9(&ppp->file.xq, skb);
		while (!ppp->xmit_pending &&
		       (skb = FUNC7(&ppp->file.xq)))
			FUNC4(ppp, skb);
		/* If there's no work left to do, tell the core net
		   code that we can accept some more. */
		if (!ppp->xmit_pending && !FUNC8(&ppp->file.xq))
			FUNC2(ppp->dev);
		else
			FUNC1(ppp->dev);
	} else {
		FUNC0(skb);
	}
	FUNC6(ppp);
}