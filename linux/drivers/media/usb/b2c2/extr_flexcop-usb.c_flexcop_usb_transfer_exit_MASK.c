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
struct flexcop_usb {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/ * iso_buffer; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  udev; int /*<<< orphan*/ ** iso_urb; } ;

/* Variables and functions */
 int B2C2_USB_NUM_ISO_URB ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct flexcop_usb *fc_usb)
{
	int i;
	for (i = 0; i < B2C2_USB_NUM_ISO_URB; i++)
		if (fc_usb->iso_urb[i] != NULL) {
			FUNC0("unlinking/killing urb no. %d\n",i);
			FUNC3(fc_usb->iso_urb[i]);
			FUNC2(fc_usb->iso_urb[i]);
		}

	if (fc_usb->iso_buffer != NULL)
		FUNC1(fc_usb->udev,
			fc_usb->buffer_size, fc_usb->iso_buffer,
			fc_usb->dma_addr);
}