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
struct usbnet {int /*<<< orphan*/  net; } ;
struct urb {int actual_length; unsigned char* transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_LINK_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usbnet *dev, struct urb *urb)
{
	int link;
	unsigned char *buf;

	if (urb->actual_length < 16)
		return;

	buf = urb->transfer_buffer;
	link = !!(buf[0] & 0x01);

	if (link) {
		FUNC1(dev->net);
		FUNC2(dev, EVENT_LINK_RESET);
	} else {
		FUNC0(dev->net);
	}
}