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
struct usbpn_dev {struct urb** urbs; int /*<<< orphan*/  active_setting; int /*<<< orphan*/  usb; TYPE_3__* data_intf; } ;
struct urb {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_4__ {unsigned int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct usbpn_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct usbpn_dev*,struct urb*,int /*<<< orphan*/ ) ; 
 unsigned int rxq_size ; 
 struct urb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct usbpn_dev *pnd = FUNC0(dev);
	int err;
	unsigned i;
	unsigned num = pnd->data_intf->cur_altsetting->desc.bInterfaceNumber;

	err = FUNC5(pnd->usb, num, pnd->active_setting);
	if (err)
		return err;

	for (i = 0; i < rxq_size; i++) {
		struct urb *req = FUNC3(0, GFP_KERNEL);

		if (!req || FUNC2(pnd, req, GFP_KERNEL)) {
			FUNC4(req);
			FUNC6(dev);
			return -ENOMEM;
		}
		pnd->urbs[i] = req;
	}

	FUNC1(dev);
	return 0;
}