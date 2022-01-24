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
struct TYPE_2__ {int (* resume ) (struct usb_interface*) ;int /*<<< orphan*/  (* suspend ) (struct usb_interface*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PMSG_SUSPEND ; 
 int FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC2 (struct usb_interface*) ; 
 int FUNC3 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf)
{
	int  ret = 0;
	struct usbnet *dev = FUNC2(intf);
	struct cdc_mbim_state *info = (void *)&dev->data;
	struct cdc_ncm_ctx *ctx = info->ctx;
	bool callsub = (intf == ctx->control && info->subdriver && info->subdriver->resume);

	if (callsub)
		ret = info->subdriver->resume(intf);
	if (ret < 0)
		goto err;
	ret = FUNC3(intf);
	if (ret < 0 && callsub)
		info->subdriver->suspend(intf, PMSG_SUSPEND);
err:
	return ret;
}