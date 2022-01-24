#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct urb {int /*<<< orphan*/  transfer_flags; void* transfer_dma; } ;
struct kvaser_usb {int rxinitdone; TYPE_2__* intf; void** rxbuf_dma; int /*<<< orphan*/ ** rxbuf; int /*<<< orphan*/  udev; int /*<<< orphan*/  rx_submitted; TYPE_1__* bulk_in; } ;
typedef  void* dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KVASER_USB_MAX_RX_URBS ; 
 int /*<<< orphan*/  KVASER_USB_RX_BUFFER_SIZE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  kvaser_usb_read_bulk_callback ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 struct urb* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kvaser_usb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 

__attribute__((used)) static int FUNC10(struct kvaser_usb *dev)
{
	int i, err = 0;

	if (dev->rxinitdone)
		return 0;

	for (i = 0; i < KVASER_USB_MAX_RX_URBS; i++) {
		struct urb *urb = NULL;
		u8 *buf = NULL;
		dma_addr_t buf_dma;

		urb = FUNC2(0, GFP_KERNEL);
		if (!urb) {
			err = -ENOMEM;
			break;
		}

		buf = FUNC1(dev->udev, KVASER_USB_RX_BUFFER_SIZE,
					 GFP_KERNEL, &buf_dma);
		if (!buf) {
			FUNC0(&dev->intf->dev,
				 "No memory left for USB buffer\n");
			FUNC6(urb);
			err = -ENOMEM;
			break;
		}

		FUNC4(urb, dev->udev,
				  FUNC7
					(dev->udev,
					 dev->bulk_in->bEndpointAddress),
				  buf, KVASER_USB_RX_BUFFER_SIZE,
				  kvaser_usb_read_bulk_callback, dev);
		urb->transfer_dma = buf_dma;
		urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		FUNC3(urb, &dev->rx_submitted);

		err = FUNC8(urb, GFP_KERNEL);
		if (err) {
			FUNC9(urb);
			FUNC5(dev->udev,
					  KVASER_USB_RX_BUFFER_SIZE, buf,
					  buf_dma);
			FUNC6(urb);
			break;
		}

		dev->rxbuf[i] = buf;
		dev->rxbuf_dma[i] = buf_dma;

		FUNC6(urb);
	}

	if (i == 0) {
		FUNC0(&dev->intf->dev, "Cannot setup read URBs, error %d\n",
			 err);
		return err;
	} else if (i < KVASER_USB_MAX_RX_URBS) {
		FUNC0(&dev->intf->dev, "RX performances may be slow\n");
	}

	dev->rxinitdone = true;

	return 0;
}