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
struct ath10k_usb_pipe {int /*<<< orphan*/  urb_submitted; int /*<<< orphan*/  ep_address; int /*<<< orphan*/  usb_pipe_handle; int /*<<< orphan*/  logical_pipe_num; TYPE_1__* ar_usb; } ;
struct ath10k_urb_context {TYPE_2__* skb; } ;
struct ath10k {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_USB_BULK ; 
 int /*<<< orphan*/  ATH10K_USB_RX_BUFFER_SIZE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int,...) ; 
 struct ath10k_urb_context* FUNC1 (struct ath10k_usb_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k_urb_context*) ; 
 int /*<<< orphan*/  ath10k_usb_recv_complete ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath10k_urb_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 

__attribute__((used)) static void FUNC10(struct ath10k *ar,
					   struct ath10k_usb_pipe *recv_pipe)
{
	struct ath10k_urb_context *urb_context;
	struct urb *urb;
	int usb_status;

	for (;;) {
		urb_context = FUNC1(recv_pipe);
		if (!urb_context)
			break;

		urb_context->skb = FUNC3(ATH10K_USB_RX_BUFFER_SIZE);
		if (!urb_context->skb)
			goto err;

		urb = FUNC4(0, GFP_ATOMIC);
		if (!urb)
			goto err;

		FUNC6(urb,
				  recv_pipe->ar_usb->udev,
				  recv_pipe->usb_pipe_handle,
				  urb_context->skb->data,
				  ATH10K_USB_RX_BUFFER_SIZE,
				  ath10k_usb_recv_complete, urb_context);

		FUNC0(ar, ATH10K_DBG_USB_BULK,
			   "usb bulk recv submit %d 0x%x ep 0x%2.2x len %d buf 0x%pK\n",
			   recv_pipe->logical_pipe_num,
			   recv_pipe->usb_pipe_handle, recv_pipe->ep_address,
			   ATH10K_USB_RX_BUFFER_SIZE, urb_context->skb);

		FUNC5(urb, &recv_pipe->urb_submitted);
		usb_status = FUNC8(urb, GFP_ATOMIC);

		if (usb_status) {
			FUNC0(ar, ATH10K_DBG_USB_BULK,
				   "usb bulk recv failed: %d\n",
				   usb_status);
			FUNC9(urb);
			FUNC7(urb);
			goto err;
		}
		FUNC7(urb);
	}

	return;

err:
	FUNC2(urb_context);
}