#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u8 ;
struct urb {int /*<<< orphan*/  transfer_flags; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct ath10k_usb_pipe {int max_packet_size; int /*<<< orphan*/  urb_submitted; int /*<<< orphan*/  usb_pipe_handle; } ;
struct ath10k_usb {int /*<<< orphan*/  udev; struct ath10k_usb_pipe* pipes; } ;
struct ath10k_urb_context {int /*<<< orphan*/  pipe; struct sk_buff* skb; } ;
struct ath10k_hif_sg_item {struct sk_buff* transfer_context; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_USB_BULK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 struct ath10k_urb_context* FUNC1 (struct ath10k_usb_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ath10k_urb_context*) ; 
 struct ath10k_usb* FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  ath10k_usb_transmit_complete ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ath10k_urb_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 

__attribute__((used)) static int FUNC10(struct ath10k *ar, u8 pipe_id,
				struct ath10k_hif_sg_item *items, int n_items)
{
	struct ath10k_usb *ar_usb = FUNC3(ar);
	struct ath10k_usb_pipe *pipe = &ar_usb->pipes[pipe_id];
	struct ath10k_urb_context *urb_context;
	struct sk_buff *skb;
	struct urb *urb;
	int ret, i;

	for (i = 0; i < n_items; i++) {
		urb_context = FUNC1(pipe);
		if (!urb_context) {
			ret = -ENOMEM;
			goto err;
		}

		skb = items[i].transfer_context;
		urb_context->skb = skb;

		urb = FUNC4(0, GFP_ATOMIC);
		if (!urb) {
			ret = -ENOMEM;
			goto err_free_urb_to_pipe;
		}

		FUNC6(urb,
				  ar_usb->udev,
				  pipe->usb_pipe_handle,
				  skb->data,
				  skb->len,
				  ath10k_usb_transmit_complete, urb_context);

		if (!(skb->len % pipe->max_packet_size)) {
			/* hit a max packet boundary on this pipe */
			urb->transfer_flags |= URB_ZERO_PACKET;
		}

		FUNC5(urb, &pipe->urb_submitted);
		ret = FUNC8(urb, GFP_ATOMIC);
		if (ret) {
			FUNC0(ar, ATH10K_DBG_USB_BULK,
				   "usb bulk transmit failed: %d\n", ret);
			FUNC9(urb);
			ret = -EINVAL;
			goto err_free_urb_to_pipe;
		}

		FUNC7(urb);
	}

	return 0;

err_free_urb_to_pipe:
	FUNC2(urb_context->pipe, urb_context);
err:
	return ret;
}