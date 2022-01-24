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
typedef  size_t u8 ;
struct sk_buff {size_t* data; } ;
struct htc_target {struct htc_endpoint* endpoint; } ;
struct htc_packet {scalar_t__ status; } ;
struct htc_frame_hdr {size_t eid; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_credit_flow_enabled; } ;
struct htc_endpoint {TYPE_1__ pipe; } ;
struct ath6kl {struct htc_target* htc_target; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct htc_packet* FUNC1 (struct htc_target*,struct htc_endpoint*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct htc_target*,struct htc_endpoint*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct htc_target*,struct htc_packet*) ; 

__attribute__((used)) static int FUNC4(struct ath6kl *ar, struct sk_buff *skb)
{
	struct htc_target *target = ar->htc_target;
	struct htc_frame_hdr *htc_hdr;
	struct htc_endpoint *ep;
	struct htc_packet *packet;
	u8 ep_id, *netdata;

	netdata = skb->data;

	htc_hdr = (struct htc_frame_hdr *) netdata;

	ep_id = htc_hdr->eid;
	ep = &target->endpoint[ep_id];

	packet = FUNC1(target, ep, skb);
	if (packet == NULL) {
		/* may have already been flushed and freed */
		FUNC0("HTC TX lookup failed!\n");
	} else {
		/* will be giving this buffer back to upper layers */
		packet->status = 0;
		FUNC3(target, packet);
	}
	skb = NULL;

	if (!ep->pipe.tx_credit_flow_enabled) {
		/*
		 * note: when using TX credit flow, the re-checking of queues
		 * happens when credits flow back from the target. in the
		 * non-TX credit case, we recheck after the packet completes
		 */
		FUNC2(target, ep, NULL);
	}

	return 0;
}