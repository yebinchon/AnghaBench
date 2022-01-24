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
struct sk_buff {scalar_t__ data; } ;
struct htc_target {int htc_flags; struct htc_endpoint* endpoint; int /*<<< orphan*/  cmd_wait; } ;
struct htc_frame_hdr {size_t endpoint_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  priv; int /*<<< orphan*/  (* tx ) (int /*<<< orphan*/ ,struct sk_buff*,size_t,int) ;} ;
struct htc_endpoint {TYPE_1__ ep_callbacks; } ;

/* Variables and functions */
 int HTC_OP_CONFIG_PIPE_CREDITS ; 
 int HTC_OP_START_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,size_t,int) ; 

void FUNC4(struct htc_target *htc_handle,
			       struct sk_buff *skb, bool txok)
{
	struct htc_endpoint *endpoint;
	struct htc_frame_hdr *htc_hdr = NULL;

	if (htc_handle->htc_flags & HTC_OP_CONFIG_PIPE_CREDITS) {
		FUNC0(&htc_handle->cmd_wait);
		htc_handle->htc_flags &= ~HTC_OP_CONFIG_PIPE_CREDITS;
		goto ret;
	}

	if (htc_handle->htc_flags & HTC_OP_START_WAIT) {
		FUNC0(&htc_handle->cmd_wait);
		htc_handle->htc_flags &= ~HTC_OP_START_WAIT;
		goto ret;
	}

	if (skb) {
		htc_hdr = (struct htc_frame_hdr *) skb->data;
		endpoint = &htc_handle->endpoint[htc_hdr->endpoint_id];
		FUNC2(skb, sizeof(struct htc_frame_hdr));

		if (endpoint->ep_callbacks.tx) {
			endpoint->ep_callbacks.tx(endpoint->ep_callbacks.priv,
						  skb, htc_hdr->endpoint_id,
						  txok);
		} else {
			FUNC1(skb);
		}
	}

	return;
ret:
	FUNC1(skb);
}