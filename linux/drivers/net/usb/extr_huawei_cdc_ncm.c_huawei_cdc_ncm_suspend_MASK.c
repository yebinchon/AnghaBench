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
struct huawei_cdc_ncm_state {TYPE_1__* subdriver; struct cdc_ncm_ctx* ctx; } ;
struct cdc_ncm_ctx {struct usb_interface* control; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_2__ {int (* suspend ) (struct usb_interface*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 
 int FUNC3 (struct usb_interface*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf,
				  pm_message_t message)
{
	int ret = 0;
	struct usbnet *usbnet_dev = FUNC1(intf);
	struct huawei_cdc_ncm_state *drvstate = (void *)&usbnet_dev->data;
	struct cdc_ncm_ctx *ctx = drvstate->ctx;

	if (ctx == NULL) {
		ret = -ENODEV;
		goto error;
	}

	ret = FUNC3(intf, message);
	if (ret < 0)
		goto error;

	if (intf == ctx->control &&
		drvstate->subdriver &&
		drvstate->subdriver->suspend)
		ret = drvstate->subdriver->suspend(intf, message);
	if (ret < 0)
		FUNC2(intf);

error:
	return ret;
}