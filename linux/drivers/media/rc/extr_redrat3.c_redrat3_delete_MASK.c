#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int dummy; } ;
struct redrat3_dev {int /*<<< orphan*/  dma_in; int /*<<< orphan*/  bulk_in_buf; TYPE_1__* ep_narrow; int /*<<< orphan*/  learn_urb; int /*<<< orphan*/  flash_urb; int /*<<< orphan*/  wide_urb; int /*<<< orphan*/  narrow_urb; } ;
struct TYPE_2__ {int /*<<< orphan*/  wMaxPacketSize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct redrat3_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct redrat3_dev *rr3,
				  struct usb_device *udev)
{
	FUNC4(rr3->narrow_urb);
	FUNC4(rr3->wide_urb);
	FUNC4(rr3->flash_urb);
	FUNC4(rr3->learn_urb);
	FUNC3(rr3->narrow_urb);
	FUNC3(rr3->wide_urb);
	FUNC3(rr3->flash_urb);
	FUNC3(rr3->learn_urb);
	FUNC2(udev, FUNC1(rr3->ep_narrow->wMaxPacketSize),
			  rr3->bulk_in_buf, rr3->dma_in);

	FUNC0(rr3);
}