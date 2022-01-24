#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct usb_interface {struct device dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_6__ {scalar_t__ bInterfaceNumber; int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_1__ desc; } ;
struct usb_device_id {int dummy; } ;
struct dln2_dev {int /*<<< orphan*/  event_cb_list; int /*<<< orphan*/  disconnect_lock; int /*<<< orphan*/  event_cb_lock; TYPE_5__* mod_rx_slots; int /*<<< orphan*/  disconnect_wq; struct usb_interface* interface; int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  ep_in; int /*<<< orphan*/  ep_out; } ;
struct TYPE_10__ {TYPE_4__* slots; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; } ;
struct TYPE_9__ {int /*<<< orphan*/  done; } ;
struct TYPE_7__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_8__ {TYPE_2__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DLN2_HANDLES ; 
 int DLN2_MAX_RX_SLOTS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  dln2_devs ; 
 int /*<<< orphan*/  FUNC3 (struct dln2_dev*) ; 
 int FUNC4 (struct dln2_dev*) ; 
 int FUNC5 (struct dln2_dev*,struct usb_host_interface*) ; 
 int FUNC6 (struct dln2_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dln2_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*) ; 
 struct dln2_dev* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_interface*,struct dln2_dev*) ; 

__attribute__((used)) static int FUNC16(struct usb_interface *interface,
		      const struct usb_device_id *usb_id)
{
	struct usb_host_interface *hostif = interface->cur_altsetting;
	struct device *dev = &interface->dev;
	struct dln2_dev *dln2;
	int ret;
	int i, j;

	if (hostif->desc.bInterfaceNumber != 0 ||
	    hostif->desc.bNumEndpoints < 2)
		return -ENODEV;

	dln2 = FUNC11(sizeof(*dln2), GFP_KERNEL);
	if (!dln2)
		return -ENOMEM;

	dln2->ep_out = hostif->endpoint[0].desc.bEndpointAddress;
	dln2->ep_in = hostif->endpoint[1].desc.bEndpointAddress;
	dln2->usb_dev = FUNC14(FUNC10(interface));
	dln2->interface = interface;
	FUNC15(interface, dln2);
	FUNC9(&dln2->disconnect_wq);

	for (i = 0; i < DLN2_HANDLES; i++) {
		FUNC9(&dln2->mod_rx_slots[i].wq);
		FUNC13(&dln2->mod_rx_slots[i].lock);
		for (j = 0; j < DLN2_MAX_RX_SLOTS; j++)
			FUNC8(&dln2->mod_rx_slots[i].slots[j].done);
	}

	FUNC13(&dln2->event_cb_lock);
	FUNC13(&dln2->disconnect_lock);
	FUNC1(&dln2->event_cb_list);

	ret = FUNC5(dln2, hostif);
	if (ret)
		goto out_free;

	ret = FUNC6(dln2, GFP_KERNEL);
	if (ret)
		goto out_stop_rx;

	ret = FUNC4(dln2);
	if (ret < 0) {
		FUNC2(dev, "failed to initialize hardware\n");
		goto out_stop_rx;
	}

	ret = FUNC12(dev, dln2_devs, FUNC0(dln2_devs));
	if (ret != 0) {
		FUNC2(dev, "failed to add mfd devices to core\n");
		goto out_stop_rx;
	}

	return 0;

out_stop_rx:
	FUNC7(dln2);

out_free:
	FUNC3(dln2);

	return ret;
}