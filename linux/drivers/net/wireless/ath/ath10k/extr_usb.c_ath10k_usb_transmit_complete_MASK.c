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
struct urb {int /*<<< orphan*/  status; struct ath10k_urb_context* context; } ;
struct sk_buff {int dummy; } ;
struct ath10k_usb_pipe {int /*<<< orphan*/  io_complete_work; int /*<<< orphan*/  io_comp_queue; int /*<<< orphan*/  logical_pipe_num; TYPE_1__* ar_usb; } ;
struct ath10k_urb_context {struct ath10k_usb_pipe* pipe; struct sk_buff* skb; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {struct ath10k* ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_USB_BULK ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k_usb_pipe*,struct ath10k_urb_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	struct ath10k_urb_context *urb_context = urb->context;
	struct ath10k_usb_pipe *pipe = urb_context->pipe;
	struct ath10k *ar = pipe->ar_usb->ar;
	struct sk_buff *skb;

	if (urb->status != 0) {
		FUNC0(ar, ATH10K_DBG_USB_BULK,
			   "pipe: %d, failed:%d\n",
			   pipe->logical_pipe_num, urb->status);
	}

	skb = urb_context->skb;
	urb_context->skb = NULL;
	FUNC1(urb_context->pipe, urb_context);

	/* note: queue implements a lock */
	FUNC3(&pipe->io_comp_queue, skb);
	FUNC2(&pipe->io_complete_work);
}