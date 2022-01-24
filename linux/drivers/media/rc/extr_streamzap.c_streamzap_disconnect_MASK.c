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
struct streamzap_ir {int /*<<< orphan*/  dma_in; int /*<<< orphan*/  buf_in; int /*<<< orphan*/  buf_in_len; int /*<<< orphan*/  urb_in; int /*<<< orphan*/  rdev; int /*<<< orphan*/ * usbdev; } ;

/* Variables and functions */
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct streamzap_ir*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct streamzap_ir* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *interface)
{
	struct streamzap_ir *sz = FUNC5(interface);
	struct usb_device *usbdev = FUNC0(interface);

	FUNC7(interface, NULL);

	if (!sz)
		return;

	sz->usbdev = NULL;
	FUNC2(sz->rdev);
	FUNC6(sz->urb_in);
	FUNC4(sz->urb_in);
	FUNC3(usbdev, sz->buf_in_len, sz->buf_in, sz->dma_in);

	FUNC1(sz);
}