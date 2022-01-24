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
struct esd_usb2 {int net_count; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct usb_interface* FUNC1 (struct device*) ; 
 struct esd_usb2* FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *d,
			 struct device_attribute *attr, char *buf)
{
	struct usb_interface *intf = FUNC1(d);
	struct esd_usb2 *dev = FUNC2(intf);

	return FUNC0(buf, "%d", dev->net_count);
}