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
struct usbnet {int /*<<< orphan*/  data; } ;
struct usb_interface {int dummy; } ;
struct cdc_ncm_ctx {struct usb_interface* control; } ;
struct cdc_mbim_state {TYPE_1__* subdriver; struct cdc_ncm_ctx* ctx; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_2__ {int (* suspend ) (struct usb_interface*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 
 int FUNC3 (struct usb_interface*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf, pm_message_t message)
{
	int ret = -ENODEV;
	struct usbnet *dev = FUNC1(intf);
	struct cdc_mbim_state *info = (void *)&dev->data;
	struct cdc_ncm_ctx *ctx = info->ctx;

	if (!ctx)
		goto error;

	/*
	 * Both usbnet_suspend() and subdriver->suspend() MUST return 0
	 * in system sleep context, otherwise, the resume callback has
	 * to recover device from previous suspend failure.
	 */
	ret = FUNC3(intf, message);
	if (ret < 0)
		goto error;

	if (intf == ctx->control && info->subdriver && info->subdriver->suspend)
		ret = info->subdriver->suspend(intf, message);
	if (ret < 0)
		FUNC2(intf);

error:
	return ret;
}