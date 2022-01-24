#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ee_info; int /*<<< orphan*/  ee_data; int /*<<< orphan*/  ee_origin; int /*<<< orphan*/  ee_errno; } ;
struct sock_exterr_skb {TYPE_1__ ee; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; struct sock* sk; } ;
struct TYPE_5__ {struct sk_buff* skb; } ;
struct arcnet_local {int /*<<< orphan*/  dev; TYPE_2__ outgoing; int /*<<< orphan*/  reply_status; } ;
struct TYPE_6__ {int /*<<< orphan*/  tskey; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMSG ; 
 struct sock_exterr_skb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SO_EE_ORIGIN_TXSTATUS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sock_exterr_skb*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC6 (struct sk_buff*) ; 
 TYPE_3__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int FUNC10 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC11(unsigned long data)
{
	struct arcnet_local *lp = (struct arcnet_local *)data;

	struct sk_buff *ackskb, *skb;
	struct sock_exterr_skb *serr;
	struct sock *sk;
	int ret;

	FUNC3();
	skb = lp->outgoing.skb;
	if (!skb || !skb->sk) {
		FUNC4();
		return;
	}

	FUNC8(skb->sk);
	sk = skb->sk;
	ackskb = FUNC6(skb);
	FUNC9(skb->sk);

	if (!ackskb) {
		FUNC4();
		return;
	}

	serr = FUNC0(ackskb);
	FUNC5(serr, 0, sizeof(*serr));
	serr->ee.ee_errno = ENOMSG;
	serr->ee.ee_origin = SO_EE_ORIGIN_TXSTATUS;
	serr->ee.ee_data = FUNC7(skb)->tskey;
	serr->ee.ee_info = lp->reply_status;

	/* finally erasing outgoing skb */
	FUNC1(lp->outgoing.skb);
	lp->outgoing.skb = NULL;

	ackskb->dev = lp->dev;

	ret = FUNC10(sk, ackskb);
	if (ret)
		FUNC2(ackskb);

	FUNC4();
}