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
struct vl600_state {int /*<<< orphan*/  current_rx_buf; } ;
struct usbnet {struct vl600_state* driver_priv; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vl600_state*) ; 
 void FUNC2 (struct usbnet*,struct usb_interface*) ; 

__attribute__((used)) static void FUNC3(struct usbnet *dev, struct usb_interface *intf)
{
	struct vl600_state *s = dev->driver_priv;

	FUNC0(s->current_rx_buf);
	FUNC1(s);

	return FUNC2(dev, intf);
}