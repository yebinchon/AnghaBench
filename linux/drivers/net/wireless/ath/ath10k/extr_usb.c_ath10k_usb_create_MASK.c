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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct ath10k_usb_pipe {int /*<<< orphan*/  io_comp_queue; int /*<<< orphan*/  io_complete_work; } ;
struct ath10k_usb {void* diag_resp_buffer; void* diag_cmd_buffer; struct ath10k_usb_pipe* pipes; struct usb_interface* interface; struct usb_device* udev; int /*<<< orphan*/  cs_lock; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_USB_MAX_DIAG_CMD ; 
 int /*<<< orphan*/  ATH10K_USB_MAX_DIAG_RESP ; 
 int ATH10K_USB_PIPE_MAX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  ath10k_usb_io_comp_work ; 
 struct ath10k_usb* FUNC2 (struct ath10k*) ; 
 int FUNC3 (struct ath10k*,struct usb_interface*) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,struct ath10k_usb*) ; 

__attribute__((used)) static int FUNC9(struct ath10k *ar,
			     struct usb_interface *interface)
{
	struct ath10k_usb *ar_usb = FUNC2(ar);
	struct usb_device *dev = FUNC4(interface);
	struct ath10k_usb_pipe *pipe;
	int ret, i;

	FUNC8(interface, ar_usb);
	FUNC7(&ar_usb->cs_lock);
	ar_usb->udev = dev;
	ar_usb->interface = interface;

	for (i = 0; i < ATH10K_USB_PIPE_MAX; i++) {
		pipe = &ar_usb->pipes[i];
		FUNC0(&pipe->io_complete_work,
			  ath10k_usb_io_comp_work);
		FUNC6(&pipe->io_comp_queue);
	}

	ar_usb->diag_cmd_buffer = FUNC5(ATH10K_USB_MAX_DIAG_CMD, GFP_KERNEL);
	if (!ar_usb->diag_cmd_buffer) {
		ret = -ENOMEM;
		goto err;
	}

	ar_usb->diag_resp_buffer = FUNC5(ATH10K_USB_MAX_DIAG_RESP,
					   GFP_KERNEL);
	if (!ar_usb->diag_resp_buffer) {
		ret = -ENOMEM;
		goto err;
	}

	ret = FUNC3(ar, interface);
	if (ret)
		goto err;

	return 0;

err:
	FUNC1(ar);
	return ret;
}