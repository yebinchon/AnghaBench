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
struct em28xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct em28xx*) ; 
 struct em28xx* FUNC1 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC2(struct usb_interface *intf)
{
	struct em28xx *dev;

	dev = FUNC1(intf);
	if (!dev)
		return 0;
	FUNC0(dev);
	return 0;
}