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
struct kvaser_usb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvaser_usb*) ; 
 struct kvaser_usb* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct usb_interface *intf)
{
	struct kvaser_usb *dev = FUNC1(intf);

	FUNC2(intf, NULL);

	if (!dev)
		return;

	FUNC0(dev);
}