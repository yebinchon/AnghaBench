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
struct ath10k_usb_pipe {size_t logical_pipe_num; int /*<<< orphan*/  flags; int /*<<< orphan*/  ep_address; struct usb_endpoint_descriptor* ep_desc; int /*<<< orphan*/  usb_pipe_handle; int /*<<< orphan*/  max_packet_size; struct ath10k_usb* ar_usb; } ;
struct ath10k_usb {int /*<<< orphan*/  udev; struct ath10k_usb_pipe* pipes; } ;
struct ath10k {int dummy; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_USB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH10K_USB_PIPE_FLAG_TX ; 
 size_t ATH10K_USB_PIPE_INVALID ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (struct ath10k*,struct ath10k_usb_pipe*,int) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,int*) ; 
 struct ath10k_usb* FUNC7 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct ath10k *ar,
					   struct usb_interface *interface)
{
	struct ath10k_usb *ar_usb = FUNC7(ar);
	struct usb_host_interface *iface_desc = interface->cur_altsetting;
	struct usb_endpoint_descriptor *endpoint;
	struct ath10k_usb_pipe *pipe;
	int ret, i, urbcount;
	u8 pipe_num;

	FUNC4(ar, ATH10K_DBG_USB, "usb setting up pipes using interface\n");

	/* walk decriptors and setup pipes */
	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;

		if (FUNC0(endpoint->bmAttributes)) {
			FUNC4(ar, ATH10K_DBG_USB,
				   "usb %s bulk ep 0x%2.2x maxpktsz %d\n",
				   FUNC1
				   (endpoint->bEndpointAddress) ?
				   "rx" : "tx", endpoint->bEndpointAddress,
				   FUNC8(endpoint->wMaxPacketSize));
		} else if (FUNC2(endpoint->bmAttributes)) {
			FUNC4(ar, ATH10K_DBG_USB,
				   "usb %s int ep 0x%2.2x maxpktsz %d interval %d\n",
				   FUNC1
				   (endpoint->bEndpointAddress) ?
				   "rx" : "tx", endpoint->bEndpointAddress,
				   FUNC8(endpoint->wMaxPacketSize),
				   endpoint->bInterval);
		} else if (FUNC3(endpoint->bmAttributes)) {
			/* TODO for ISO */
			FUNC4(ar, ATH10K_DBG_USB,
				   "usb %s isoc ep 0x%2.2x maxpktsz %d interval %d\n",
				   FUNC1
				   (endpoint->bEndpointAddress) ?
				   "rx" : "tx", endpoint->bEndpointAddress,
				   FUNC8(endpoint->wMaxPacketSize),
				   endpoint->bInterval);
		}
		urbcount = 0;

		pipe_num =
		    FUNC6(endpoint->bEndpointAddress,
						    &urbcount);
		if (pipe_num == ATH10K_USB_PIPE_INVALID)
			continue;

		pipe = &ar_usb->pipes[pipe_num];
		if (pipe->ar_usb)
			/* hmmm..pipe was already setup */
			continue;

		pipe->ar_usb = ar_usb;
		pipe->logical_pipe_num = pipe_num;
		pipe->ep_address = endpoint->bEndpointAddress;
		pipe->max_packet_size = FUNC8(endpoint->wMaxPacketSize);

		if (FUNC0(endpoint->bmAttributes)) {
			if (FUNC1(pipe->ep_address)) {
				pipe->usb_pipe_handle =
				    FUNC9(ar_usb->udev,
						    pipe->ep_address);
			} else {
				pipe->usb_pipe_handle =
				    FUNC12(ar_usb->udev,
						    pipe->ep_address);
			}
		} else if (FUNC2(endpoint->bmAttributes)) {
			if (FUNC1(pipe->ep_address)) {
				pipe->usb_pipe_handle =
				    FUNC10(ar_usb->udev,
						   pipe->ep_address);
			} else {
				pipe->usb_pipe_handle =
				    FUNC13(ar_usb->udev,
						   pipe->ep_address);
			}
		} else if (FUNC3(endpoint->bmAttributes)) {
			/* TODO for ISO */
			if (FUNC1(pipe->ep_address)) {
				pipe->usb_pipe_handle =
				    FUNC11(ar_usb->udev,
						    pipe->ep_address);
			} else {
				pipe->usb_pipe_handle =
				    FUNC14(ar_usb->udev,
						    pipe->ep_address);
			}
		}

		pipe->ep_desc = endpoint;

		if (!FUNC1(pipe->ep_address))
			pipe->flags |= ATH10K_USB_PIPE_FLAG_TX;

		ret = FUNC5(ar, pipe, urbcount);
		if (ret)
			return ret;
	}

	return 0;
}