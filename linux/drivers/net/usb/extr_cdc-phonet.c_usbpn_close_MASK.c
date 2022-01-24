#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usbpn_dev {int /*<<< orphan*/  active_setting; int /*<<< orphan*/  usb; struct urb** urbs; TYPE_3__* data_intf; } ;
struct urb {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_4__ {unsigned int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 struct usbpn_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 unsigned int rxq_size ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct usbpn_dev *pnd = FUNC0(dev);
	unsigned i;
	unsigned num = pnd->data_intf->cur_altsetting->desc.bInterfaceNumber;

	FUNC1(dev);

	for (i = 0; i < rxq_size; i++) {
		struct urb *req = pnd->urbs[i];

		if (!req)
			continue;
		FUNC3(req);
		FUNC2(req);
		pnd->urbs[i] = NULL;
	}

	return FUNC4(pnd->usb, num, !pnd->active_setting);
}