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
struct urb {int dummy; } ;
struct peak_usb_device {int /*<<< orphan*/  active_tx_urbs; int /*<<< orphan*/  tx_submitted; TYPE_1__* tx_contexts; int /*<<< orphan*/  rx_submitted; } ;
struct TYPE_2__ {int echo_index; struct urb* urb; } ;

/* Variables and functions */
 int PCAN_USB_MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct peak_usb_device *dev)
{
	int i;

	/* free all Rx (submitted) urbs */
	FUNC2(&dev->rx_submitted);

	/* free unsubmitted Tx urbs first */
	for (i = 0; i < PCAN_USB_MAX_TX_URBS; i++) {
		struct urb *urb = dev->tx_contexts[i].urb;

		if (!urb ||
		    dev->tx_contexts[i].echo_index != PCAN_USB_MAX_TX_URBS) {
			/*
			 * this urb is already released or always submitted,
			 * let usb core free by itself
			 */
			continue;
		}

		FUNC1(urb);
		dev->tx_contexts[i].urb = NULL;
	}

	/* then free all submitted Tx urbs */
	FUNC2(&dev->tx_submitted);
	FUNC0(&dev->active_tx_urbs, 0);
}