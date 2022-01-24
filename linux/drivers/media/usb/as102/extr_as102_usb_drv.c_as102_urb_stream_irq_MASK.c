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
struct urb {int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  actual_length; struct as102_dev_t* context; } ;
struct as102_dev_t {scalar_t__ streaming; int /*<<< orphan*/  dvb_dmx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS102_USB_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct as102_dev_t*,struct urb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct urb *urb)
{
	struct as102_dev_t *as102_dev = urb->context;

	if (urb->actual_length > 0) {
		FUNC1(&as102_dev->dvb_dmx,
				 urb->transfer_buffer,
				 urb->actual_length);
	} else {
		if (urb->actual_length == 0)
			FUNC2(urb->transfer_buffer, 0, AS102_USB_BUF_SIZE);
	}

	/* is not stopped, re-submit urb */
	if (as102_dev->streaming)
		FUNC0(as102_dev, urb);
}