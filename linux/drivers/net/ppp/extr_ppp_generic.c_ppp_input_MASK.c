#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ppp_channel {struct channel* ppp; } ;
struct TYPE_11__ {scalar_t__ qlen; } ;
struct TYPE_10__ {int /*<<< orphan*/  rwait; TYPE_4__ rq; } ;
struct channel {int /*<<< orphan*/  upl; TYPE_6__* ppp; TYPE_3__ file; } ;
struct TYPE_12__ {TYPE_2__* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  rx_length_errors; } ;
struct TYPE_9__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int PPP_CCPFRAG ; 
 scalar_t__ PPP_MAX_RQLEN ; 
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,struct sk_buff*,struct channel*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(struct ppp_channel *chan, struct sk_buff *skb)
{
	struct channel *pch = chan->ppp;
	int proto;

	if (!pch) {
		FUNC1(skb);
		return;
	}

	FUNC5(&pch->upl);
	if (!FUNC2(skb)) {
		FUNC1(skb);
		if (pch->ppp) {
			++pch->ppp->dev->stats.rx_length_errors;
			FUNC4(pch->ppp);
		}
		goto done;
	}

	proto = FUNC0(skb);
	if (!pch->ppp || proto >= 0xc000 || proto == PPP_CCPFRAG) {
		/* put it on the channel queue */
		FUNC8(&pch->file.rq, skb);
		/* drop old frames if queue too long */
		while (pch->file.rq.qlen > PPP_MAX_RQLEN &&
		       (skb = FUNC7(&pch->file.rq)))
			FUNC1(skb);
		FUNC9(&pch->file.rwait);
	} else {
		FUNC3(pch->ppp, skb, pch);
	}

done:
	FUNC6(&pch->upl);
}