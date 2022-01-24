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
struct redrat3_dev {int /*<<< orphan*/  flash_urb; int /*<<< orphan*/  wide_urb; int /*<<< orphan*/  narrow_urb; int /*<<< orphan*/  led; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct redrat3_dev* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf, pm_message_t message)
{
	struct redrat3_dev *rr3 = FUNC1(intf);

	FUNC0(&rr3->led);
	FUNC2(rr3->narrow_urb);
	FUNC2(rr3->wide_urb);
	FUNC2(rr3->flash_urb);
	return 0;
}