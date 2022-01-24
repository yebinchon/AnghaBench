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
struct usb_device_id {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_nr ; 
 int /*<<< orphan*/  artec_t1_usb2_properties ; 
 int /*<<< orphan*/  dibusb1_1_an2235_properties ; 
 int /*<<< orphan*/  dibusb1_1_properties ; 
 int /*<<< orphan*/  dibusb2_0b_properties ; 
 scalar_t__ FUNC0 (struct usb_interface*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct usb_interface *intf,
		const struct usb_device_id *id)
{
	if (0 == FUNC0(intf, &dibusb1_1_properties,
				     THIS_MODULE, NULL, adapter_nr) ||
	    0 == FUNC0(intf, &dibusb1_1_an2235_properties,
				     THIS_MODULE, NULL, adapter_nr) ||
	    0 == FUNC0(intf, &dibusb2_0b_properties,
				     THIS_MODULE, NULL, adapter_nr) ||
	    0 == FUNC0(intf, &artec_t1_usb2_properties,
				     THIS_MODULE, NULL, adapter_nr))
		return 0;

	return -EINVAL;
}