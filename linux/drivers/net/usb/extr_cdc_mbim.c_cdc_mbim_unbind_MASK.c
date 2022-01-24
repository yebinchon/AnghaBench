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
struct cdc_ncm_ctx {int /*<<< orphan*/  control; } ;
struct cdc_mbim_state {TYPE_1__* subdriver; struct cdc_ncm_ctx* ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disconnect ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbnet*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usbnet *dev, struct usb_interface *intf)
{
	struct cdc_mbim_state *info = (void *)&dev->data;
	struct cdc_ncm_ctx *ctx = info->ctx;

	/* disconnect subdriver from control interface */
	if (info->subdriver && info->subdriver->disconnect)
		info->subdriver->disconnect(ctx->control);
	info->subdriver = NULL;

	/* let NCM unbind clean up both control and data interface */
	FUNC0(dev, intf);
}