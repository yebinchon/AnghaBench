#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct if_usb_card {TYPE_2__* udev; TYPE_1__* tx_urb; int /*<<< orphan*/  ep_out; scalar_t__ surprise_removed; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int /*<<< orphan*/  if_usb_write_bulk_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct if_usb_card *cardp, uint8_t *payload, uint16_t nb)
{
	int ret;

	/* check if device is removed */
	if (cardp->surprise_removed) {
		FUNC1(&cardp->udev->dev, "Device removed\n");
		ret = -ENODEV;
		goto tx_ret;
	}

	FUNC2(cardp->tx_urb, cardp->udev,
			  FUNC3(cardp->udev,
					  cardp->ep_out),
			  payload, nb, if_usb_write_bulk_callback, cardp);

	cardp->tx_urb->transfer_flags |= URB_ZERO_PACKET;

	if ((ret = FUNC4(cardp->tx_urb, GFP_ATOMIC))) {
		FUNC1(&cardp->udev->dev, "usb_submit_urb failed: %d\n", ret);
	} else {
		FUNC0(&cardp->udev->dev, "usb_submit_urb success\n");
		ret = 0;
	}

tx_ret:
	return ret;
}