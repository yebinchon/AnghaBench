#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vub300_mmc_host {TYPE_1__* urb; struct usb_device* udev; } ;
struct usb_device {int dummy; } ;
struct completion {int dummy; } ;
struct TYPE_6__ {int actual_length; int status; struct completion* context; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct usb_device*,unsigned int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vub300_usb_bulk_msg_completion ; 
 int /*<<< orphan*/  FUNC8 (struct completion*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct vub300_mmc_host *vub300,
			       unsigned int pipe, void *data, int len,
			       int *actual_length, int timeout_msecs)
{
	/* cmd_mutex is held by vub300_cmndwork_thread */
	struct usb_device *usb_dev = vub300->udev;
	struct completion done;
	int retval;
	vub300->urb = FUNC3(0, GFP_KERNEL);
	if (!vub300->urb)
		return -ENOMEM;
	FUNC4(vub300->urb, usb_dev, pipe, data, len,
			  vub300_usb_bulk_msg_completion, NULL);
	FUNC0(&done);
	vub300->urb->context = &done;
	vub300->urb->actual_length = 0;
	retval = FUNC7(vub300->urb, GFP_KERNEL);
	if (FUNC2(retval))
		goto out;
	if (!FUNC8
	    (&done, FUNC1(timeout_msecs))) {
		retval = -ETIMEDOUT;
		FUNC6(vub300->urb);
	} else {
		retval = vub300->urb->status;
	}
out:
	*actual_length = vub300->urb->actual_length;
	FUNC5(vub300->urb);
	vub300->urb = NULL;
	return retval;
}