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
struct usbnet {scalar_t__* data; } ;
struct usb_interface {int dummy; } ;
struct usb_driver {int dummy; } ;
struct cdc_ncm_ctx {struct usb_interface* control; struct usb_interface* data; int /*<<< orphan*/  bh; int /*<<< orphan*/  tx_timer; int /*<<< orphan*/  stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cdc_ncm_ctx*) ; 
 struct usb_driver* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_driver*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

void FUNC7(struct usbnet *dev, struct usb_interface *intf)
{
	struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
	struct usb_driver *driver = FUNC2(intf);

	if (ctx == NULL)
		return;		/* no setup */

	FUNC0(&ctx->stop, 1);

	FUNC3(&ctx->tx_timer);

	FUNC4(&ctx->bh);

	/* handle devices with combined control and data interface */
	if (ctx->control == ctx->data)
		ctx->data = NULL;

	/* disconnect master --> disconnect slave */
	if (intf == ctx->control && ctx->data) {
		FUNC6(ctx->data, NULL);
		FUNC5(driver, ctx->data);
		ctx->data = NULL;

	} else if (intf == ctx->data && ctx->control) {
		FUNC6(ctx->control, NULL);
		FUNC5(driver, ctx->control);
		ctx->control = NULL;
	}

	FUNC6(intf, NULL);
	FUNC1(ctx);
}