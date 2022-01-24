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
struct ath6kl_usb_pipe {int /*<<< orphan*/  io_comp_queue; int /*<<< orphan*/  io_complete_work; } ;
struct ath6kl_usb {int /*<<< orphan*/ * diag_resp_buffer; int /*<<< orphan*/ * diag_cmd_buffer; struct ath6kl_usb_pipe* pipes; struct usb_interface* interface; struct usb_device* udev; int /*<<< orphan*/  cs_lock; } ;

/* Variables and functions */
 int ATH6KL_USB_MAX_DIAG_CMD ; 
 int ATH6KL_USB_MAX_DIAG_RESP ; 
 int ATH6KL_USB_PIPE_MAX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_usb*) ; 
 int /*<<< orphan*/  ath6kl_usb_io_comp_work ; 
 int FUNC2 (struct ath6kl_usb*) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,struct ath6kl_usb*) ; 

__attribute__((used)) static struct ath6kl_usb *FUNC8(struct usb_interface *interface)
{
	struct usb_device *dev = FUNC3(interface);
	struct ath6kl_usb *ar_usb;
	struct ath6kl_usb_pipe *pipe;
	int status = 0;
	int i;

	ar_usb = FUNC4(sizeof(struct ath6kl_usb), GFP_KERNEL);
	if (ar_usb == NULL)
		goto fail_ath6kl_usb_create;

	FUNC7(interface, ar_usb);
	FUNC6(&(ar_usb->cs_lock));
	ar_usb->udev = dev;
	ar_usb->interface = interface;

	for (i = 0; i < ATH6KL_USB_PIPE_MAX; i++) {
		pipe = &ar_usb->pipes[i];
		FUNC0(&pipe->io_complete_work,
			  ath6kl_usb_io_comp_work);
		FUNC5(&pipe->io_comp_queue);
	}

	ar_usb->diag_cmd_buffer = FUNC4(ATH6KL_USB_MAX_DIAG_CMD, GFP_KERNEL);
	if (ar_usb->diag_cmd_buffer == NULL) {
		status = -ENOMEM;
		goto fail_ath6kl_usb_create;
	}

	ar_usb->diag_resp_buffer = FUNC4(ATH6KL_USB_MAX_DIAG_RESP,
					   GFP_KERNEL);
	if (ar_usb->diag_resp_buffer == NULL) {
		status = -ENOMEM;
		goto fail_ath6kl_usb_create;
	}

	status = FUNC2(ar_usb);

fail_ath6kl_usb_create:
	if (status != 0) {
		FUNC1(ar_usb);
		ar_usb = NULL;
	}
	return ar_usb;
}