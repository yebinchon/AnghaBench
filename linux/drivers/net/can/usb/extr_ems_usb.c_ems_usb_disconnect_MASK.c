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
struct ems_usb {int /*<<< orphan*/  tx_msg_buffer; int /*<<< orphan*/  intr_in_buffer; int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ems_usb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ems_usb* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct ems_usb *dev = FUNC5(intf);

	FUNC6(intf, NULL);

	if (dev) {
		FUNC3(dev->netdev);
		FUNC0(dev->netdev);

		FUNC2(dev);

		FUNC4(dev->intr_urb);

		FUNC1(dev->intr_in_buffer);
		FUNC1(dev->tx_msg_buffer);
	}
}