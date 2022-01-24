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
struct sk_buff {scalar_t__ cb; } ;
struct TYPE_2__ {int /*<<< orphan*/  runq_work; int /*<<< orphan*/  workq; int /*<<< orphan*/  queue; } ;
struct nfp_net {TYPE_1__ mbox_cmsg; } ;
struct nfp_ccm_mbox_cmsg_cb {scalar_t__ posted; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_NET_MBOX_CMSG_STATE_NEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nfp_net *nn)
{
	struct nfp_ccm_mbox_cmsg_cb *cb;
	struct sk_buff *skb;

	skb = FUNC1(&nn->mbox_cmsg.queue);
	if (!skb)
		return;

	cb = (void *)skb->cb;
	cb->state = NFP_NET_MBOX_CMSG_STATE_NEXT;
	if (cb->posted)
		FUNC0(nn->mbox_cmsg.workq, &nn->mbox_cmsg.runq_work);
}