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
typedef  int /*<<< orphan*/  u8 ;
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct ems_usb {int free_slots; TYPE_1__ can; struct urb* intr_urb; scalar_t__* intr_in_buffer; int /*<<< orphan*/  udev; int /*<<< orphan*/  rx_submitted; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int CONTR_BUS_ERROR ; 
 int CONTR_CAN_MESSAGE ; 
 int CONTR_CAN_STATE ; 
 int CONTR_CONT_ON ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INTR_IN_BUFFER_SIZE ; 
 int MAX_RX_URBS ; 
 int /*<<< orphan*/  RX_BUFFER_SIZE ; 
 int /*<<< orphan*/  SJA1000_MOD_NORMAL ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int FUNC0 (struct ems_usb*,int) ; 
 int /*<<< orphan*/  ems_usb_read_bulk_callback ; 
 int /*<<< orphan*/  ems_usb_read_interrupt_callback ; 
 int FUNC1 (struct ems_usb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ems_usb*) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ems_usb*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct urb*) ; 

__attribute__((used)) static int FUNC15(struct ems_usb *dev)
{
	struct net_device *netdev = dev->netdev;
	int err, i;

	dev->intr_in_buffer[0] = 0;
	dev->free_slots = 50; /* initial size */

	for (i = 0; i < MAX_RX_URBS; i++) {
		struct urb *urb = NULL;
		u8 *buf = NULL;

		/* create a URB, and a buffer for it */
		urb = FUNC5(0, GFP_KERNEL);
		if (!urb) {
			err = -ENOMEM;
			break;
		}

		buf = FUNC4(dev->udev, RX_BUFFER_SIZE, GFP_KERNEL,
					 &urb->transfer_dma);
		if (!buf) {
			FUNC2(netdev, "No memory left for USB buffer\n");
			FUNC10(urb);
			err = -ENOMEM;
			break;
		}

		FUNC7(urb, dev->udev, FUNC11(dev->udev, 2),
				  buf, RX_BUFFER_SIZE,
				  ems_usb_read_bulk_callback, dev);
		urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		FUNC6(urb, &dev->rx_submitted);

		err = FUNC13(urb, GFP_KERNEL);
		if (err) {
			FUNC14(urb);
			FUNC9(dev->udev, RX_BUFFER_SIZE, buf,
					  urb->transfer_dma);
			FUNC10(urb);
			break;
		}

		/* Drop reference, USB core will take care of freeing it */
		FUNC10(urb);
	}

	/* Did we submit any URBs */
	if (i == 0) {
		FUNC3(netdev, "couldn't setup read URBs\n");
		return err;
	}

	/* Warn if we've couldn't transmit all the URBs */
	if (i < MAX_RX_URBS)
		FUNC3(netdev, "rx performance may be slow\n");

	/* Setup and start interrupt URB */
	FUNC8(dev->intr_urb, dev->udev,
			 FUNC12(dev->udev, 1),
			 dev->intr_in_buffer,
			 INTR_IN_BUFFER_SIZE,
			 ems_usb_read_interrupt_callback, dev, 1);

	err = FUNC13(dev->intr_urb, GFP_KERNEL);
	if (err) {
		FUNC3(netdev, "intr URB submit failed: %d\n", err);

		return err;
	}

	/* CPC-USB will transfer received message to host */
	err = FUNC0(dev, CONTR_CAN_MESSAGE | CONTR_CONT_ON);
	if (err)
		goto failed;

	/* CPC-USB will transfer CAN state changes to host */
	err = FUNC0(dev, CONTR_CAN_STATE | CONTR_CONT_ON);
	if (err)
		goto failed;

	/* CPC-USB will transfer bus errors to host */
	err = FUNC0(dev, CONTR_BUS_ERROR | CONTR_CONT_ON);
	if (err)
		goto failed;

	err = FUNC1(dev, SJA1000_MOD_NORMAL);
	if (err)
		goto failed;

	dev->can.state = CAN_STATE_ERROR_ACTIVE;

	return 0;

failed:
	FUNC3(netdev, "couldn't submit control: %d\n", err);

	return err;
}