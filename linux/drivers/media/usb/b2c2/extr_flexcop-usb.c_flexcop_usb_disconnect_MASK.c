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
struct flexcop_usb {int /*<<< orphan*/  fc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct flexcop_usb*) ; 
 int /*<<< orphan*/  FUNC3 (struct flexcop_usb*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 struct flexcop_usb* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *intf)
{
	struct flexcop_usb *fc_usb = FUNC5(intf);
	FUNC3(fc_usb);
	FUNC0(fc_usb->fc_dev);
	FUNC2(fc_usb);
	FUNC1(fc_usb->fc_dev);
	FUNC4("%s successfully deinitialized and disconnected.", DRIVER_NAME);
}