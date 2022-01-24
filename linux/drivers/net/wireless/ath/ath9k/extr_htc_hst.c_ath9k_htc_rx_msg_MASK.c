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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ data; } ;
struct htc_target {struct htc_endpoint* endpoint; } ;
struct htc_frame_hdr {int endpoint_id; int flags; scalar_t__* control; } ;
struct TYPE_2__ {int /*<<< orphan*/  priv; int /*<<< orphan*/  (* rx ) (int /*<<< orphan*/ ,struct sk_buff*,int) ;} ;
struct htc_endpoint {TYPE_1__ ep_callbacks; } ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENDPOINT0 ; 
 int ENDPOINT_MAX ; 
 int HTC_FLAGS_RECV_TRAILER ; 
#define  HTC_MSG_CONNECT_SERVICE_RESPONSE_ID 129 
#define  HTC_MSG_READY_ID 128 
 scalar_t__ USB_REG_IN_PIPE ; 
 int /*<<< orphan*/  FUNC0 (struct htc_target*,struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct htc_target*,struct htc_frame_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct htc_target*,struct htc_frame_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 

void FUNC10(struct htc_target *htc_handle,
		      struct sk_buff *skb, u32 len, u8 pipe_id)
{
	struct htc_frame_hdr *htc_hdr;
	enum htc_endpoint_id epid;
	struct htc_endpoint *endpoint;
	__be16 *msg_id;

	if (!htc_handle || !skb)
		return;

	htc_hdr = (struct htc_frame_hdr *) skb->data;
	epid = htc_hdr->endpoint_id;

	if (epid == 0x99) {
		FUNC0(htc_handle, skb);
		FUNC6(skb);
		return;
	}

	if (epid < 0 || epid >= ENDPOINT_MAX) {
		if (pipe_id != USB_REG_IN_PIPE)
			FUNC3(skb);
		else
			FUNC6(skb);
		return;
	}

	if (epid == ENDPOINT0) {

		/* Handle trailer */
		if (htc_hdr->flags & HTC_FLAGS_RECV_TRAILER) {
			if (FUNC2(*(__be32 *) skb->data) == 0x00C60000)
				/* Move past the Watchdog pattern */
				htc_hdr = (struct htc_frame_hdr *)(skb->data + 4);
		}

		/* Get the message ID */
		msg_id = (__be16 *) ((void *) htc_hdr +
				     sizeof(struct htc_frame_hdr));

		/* Now process HTC messages */
		switch (FUNC1(*msg_id)) {
		case HTC_MSG_READY_ID:
			FUNC5(htc_handle, htc_hdr);
			break;
		case HTC_MSG_CONNECT_SERVICE_RESPONSE_ID:
			FUNC4(htc_handle, htc_hdr);
			break;
		default:
			break;
		}

		FUNC6(skb);

	} else {
		if (htc_hdr->flags & HTC_FLAGS_RECV_TRAILER)
			FUNC8(skb, len - htc_hdr->control[0]);

		FUNC7(skb, sizeof(struct htc_frame_hdr));

		endpoint = &htc_handle->endpoint[epid];
		if (endpoint->ep_callbacks.rx)
			endpoint->ep_callbacks.rx(endpoint->ep_callbacks.priv,
						  skb, epid);
	}
}