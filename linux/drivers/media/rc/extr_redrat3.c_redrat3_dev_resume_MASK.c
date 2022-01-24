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
struct redrat3_dev {int /*<<< orphan*/  led; int /*<<< orphan*/  wide_urb; int /*<<< orphan*/  narrow_urb; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct redrat3_dev* FUNC1 (struct usb_interface*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf)
{
	struct redrat3_dev *rr3 = FUNC1(intf);

	if (FUNC2(rr3->narrow_urb, GFP_ATOMIC))
		return -EIO;
	if (FUNC2(rr3->wide_urb, GFP_ATOMIC))
		return -EIO;
	FUNC0(&rr3->led);
	return 0;
}