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
typedef  size_t u8 ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bmAttributes; int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bEndpointAddress; int /*<<< orphan*/  bInterval; } ;
struct ath6kl_usb_pipe {size_t logical_pipe_num; int /*<<< orphan*/  flags; int /*<<< orphan*/  ep_address; struct usb_endpoint_descriptor* ep_desc; int /*<<< orphan*/  usb_pipe_handle; int /*<<< orphan*/  max_packet_size; struct ath6kl_usb* ar_usb; } ;
struct ath6kl_usb {int /*<<< orphan*/  udev; struct ath6kl_usb_pipe* pipes; struct usb_interface* interface; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_USB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH6KL_USB_PIPE_FLAG_TX ; 
 size_t ATH6KL_USB_PIPE_INVALID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (struct ath6kl_usb_pipe*,int) ; 
 size_t FUNC6 (struct ath6kl_usb*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct ath6kl_usb *ar_usb)
{
	struct usb_interface *interface = ar_usb->interface;
	struct usb_host_interface *iface_desc = interface->cur_altsetting;
	struct usb_endpoint_descriptor *endpoint;
	struct ath6kl_usb_pipe *pipe;
	int i, urbcount, status = 0;
	u8 pipe_num;

	FUNC4(ATH6KL_DBG_USB, "setting up USB Pipes using interface\n");

	/* walk decriptors and setup pipes */
	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;

		if (FUNC0(endpoint->bmAttributes)) {
			FUNC4(ATH6KL_DBG_USB,
				   "%s Bulk Ep:0x%2.2X maxpktsz:%d\n",
				   FUNC1
				   (endpoint->bEndpointAddress) ?
				   "RX" : "TX", endpoint->bEndpointAddress,
				   FUNC7(endpoint->wMaxPacketSize));
		} else if (FUNC2(endpoint->bmAttributes)) {
			FUNC4(ATH6KL_DBG_USB,
				   "%s Int Ep:0x%2.2X maxpktsz:%d interval:%d\n",
				   FUNC1
				   (endpoint->bEndpointAddress) ?
				   "RX" : "TX", endpoint->bEndpointAddress,
				   FUNC7(endpoint->wMaxPacketSize),
				   endpoint->bInterval);
		} else if (FUNC3(endpoint->bmAttributes)) {
			/* TODO for ISO */
			FUNC4(ATH6KL_DBG_USB,
				   "%s ISOC Ep:0x%2.2X maxpktsz:%d interval:%d\n",
				   FUNC1
				   (endpoint->bEndpointAddress) ?
				   "RX" : "TX", endpoint->bEndpointAddress,
				   FUNC7(endpoint->wMaxPacketSize),
				   endpoint->bInterval);
		}
		urbcount = 0;

		pipe_num =
		    FUNC6(ar_usb,
						    endpoint->bEndpointAddress,
						    &urbcount);
		if (pipe_num == ATH6KL_USB_PIPE_INVALID)
			continue;

		pipe = &ar_usb->pipes[pipe_num];
		if (pipe->ar_usb != NULL) {
			/* hmmm..pipe was already setup */
			continue;
		}

		pipe->ar_usb = ar_usb;
		pipe->logical_pipe_num = pipe_num;
		pipe->ep_address = endpoint->bEndpointAddress;
		pipe->max_packet_size = FUNC7(endpoint->wMaxPacketSize);

		if (FUNC0(endpoint->bmAttributes)) {
			if (FUNC1(pipe->ep_address)) {
				pipe->usb_pipe_handle =
				    FUNC8(ar_usb->udev,
						    pipe->ep_address);
			} else {
				pipe->usb_pipe_handle =
				    FUNC11(ar_usb->udev,
						    pipe->ep_address);
			}
		} else if (FUNC2(endpoint->bmAttributes)) {
			if (FUNC1(pipe->ep_address)) {
				pipe->usb_pipe_handle =
				    FUNC9(ar_usb->udev,
						   pipe->ep_address);
			} else {
				pipe->usb_pipe_handle =
				    FUNC12(ar_usb->udev,
						   pipe->ep_address);
			}
		} else if (FUNC3(endpoint->bmAttributes)) {
			/* TODO for ISO */
			if (FUNC1(pipe->ep_address)) {
				pipe->usb_pipe_handle =
				    FUNC10(ar_usb->udev,
						    pipe->ep_address);
			} else {
				pipe->usb_pipe_handle =
				    FUNC13(ar_usb->udev,
						    pipe->ep_address);
			}
		}

		pipe->ep_desc = endpoint;

		if (!FUNC1(pipe->ep_address))
			pipe->flags |= ATH6KL_USB_PIPE_FLAG_TX;

		status = FUNC5(pipe, urbcount);
		if (status != 0)
			break;
	}

	return status;
}