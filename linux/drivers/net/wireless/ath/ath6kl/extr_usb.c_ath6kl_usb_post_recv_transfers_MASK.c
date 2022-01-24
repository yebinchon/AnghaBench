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
struct urb {int dummy; } ;
struct ath6kl_usb_pipe {int /*<<< orphan*/  urb_submitted; int /*<<< orphan*/  ep_address; int /*<<< orphan*/  usb_pipe_handle; int /*<<< orphan*/  logical_pipe_num; TYPE_1__* ar_usb; } ;
struct ath6kl_urb_context {TYPE_2__* skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_USB_BULK ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct ath6kl_urb_context* FUNC1 (struct ath6kl_usb_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl_urb_context*) ; 
 int /*<<< orphan*/  ath6kl_usb_recv_complete ; 
 TYPE_2__* FUNC3 (int) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ath6kl_urb_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 

__attribute__((used)) static void FUNC10(struct ath6kl_usb_pipe *recv_pipe,
					   int buffer_length)
{
	struct ath6kl_urb_context *urb_context;
	struct urb *urb;
	int usb_status;

	while (true) {
		urb_context = FUNC1(recv_pipe);
		if (urb_context == NULL)
			break;

		urb_context->skb = FUNC3(buffer_length);
		if (urb_context->skb == NULL)
			goto err_cleanup_urb;

		urb = FUNC4(0, GFP_ATOMIC);
		if (urb == NULL)
			goto err_cleanup_urb;

		FUNC6(urb,
				  recv_pipe->ar_usb->udev,
				  recv_pipe->usb_pipe_handle,
				  urb_context->skb->data,
				  buffer_length,
				  ath6kl_usb_recv_complete, urb_context);

		FUNC0(ATH6KL_DBG_USB_BULK,
			   "ath6kl usb: bulk recv submit:%d, 0x%X (ep:0x%2.2X), %d bytes buf:0x%p\n",
			   recv_pipe->logical_pipe_num,
			   recv_pipe->usb_pipe_handle, recv_pipe->ep_address,
			   buffer_length, urb_context->skb);

		FUNC5(urb, &recv_pipe->urb_submitted);
		usb_status = FUNC8(urb, GFP_ATOMIC);

		if (usb_status) {
			FUNC0(ATH6KL_DBG_USB_BULK,
				   "ath6kl usb : usb bulk recv failed %d\n",
				   usb_status);
			FUNC9(urb);
			FUNC7(urb);
			goto err_cleanup_urb;
		}
		FUNC7(urb);
	}
	return;

err_cleanup_urb:
	FUNC2(urb_context);
	return;
}