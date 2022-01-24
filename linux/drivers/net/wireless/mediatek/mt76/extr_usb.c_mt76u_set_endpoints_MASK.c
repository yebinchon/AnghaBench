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
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct mt76_usb {void** out_ep; void** in_ep; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int __MT_EP_IN_MAX ; 
 int __MT_EP_OUT_MAX ; 
 scalar_t__ FUNC0 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC1 (struct usb_endpoint_descriptor*) ; 
 void* FUNC2 (struct usb_endpoint_descriptor*) ; 

__attribute__((used)) static int
FUNC3(struct usb_interface *intf,
		    struct mt76_usb *usb)
{
	struct usb_host_interface *intf_desc = intf->cur_altsetting;
	struct usb_endpoint_descriptor *ep_desc;
	int i, in_ep = 0, out_ep = 0;

	for (i = 0; i < intf_desc->desc.bNumEndpoints; i++) {
		ep_desc = &intf_desc->endpoint[i].desc;

		if (FUNC0(ep_desc) &&
		    in_ep < __MT_EP_IN_MAX) {
			usb->in_ep[in_ep] = FUNC2(ep_desc);
			in_ep++;
		} else if (FUNC1(ep_desc) &&
			   out_ep < __MT_EP_OUT_MAX) {
			usb->out_ep[out_ep] = FUNC2(ep_desc);
			out_ep++;
		}
	}

	if (in_ep != __MT_EP_IN_MAX || out_ep != __MT_EP_OUT_MAX)
		return -EINVAL;
	return 0;
}