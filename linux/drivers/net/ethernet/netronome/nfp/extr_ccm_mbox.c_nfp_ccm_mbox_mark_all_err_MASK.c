#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ cb; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {TYPE_2__ queue; } ;
struct nfp_net {TYPE_1__ mbox_cmsg; } ;
struct nfp_ccm_mbox_cmsg_cb {int err; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_NET_MBOX_CMSG_STATE_DONE ; 
 struct sk_buff* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct nfp_net *nn, struct sk_buff *last, int err)
{
	struct nfp_ccm_mbox_cmsg_cb *cb;
	struct sk_buff *skb;

	FUNC3(&nn->mbox_cmsg.queue.lock);
	do {
		skb = FUNC0(&nn->mbox_cmsg.queue);
		cb = (void *)skb->cb;

		cb->err = err;
		FUNC2(); /* order the cb->err vs. cb->state */
		cb->state = NFP_NET_MBOX_CMSG_STATE_DONE;
	} while (skb != last);

	FUNC1(nn);
	FUNC4(&nn->mbox_cmsg.queue.lock);
}