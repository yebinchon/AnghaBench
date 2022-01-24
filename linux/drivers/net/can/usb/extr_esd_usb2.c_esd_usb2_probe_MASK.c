#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  version; scalar_t__ nets; } ;
struct TYPE_6__ {scalar_t__ drv_version; scalar_t__ flags; scalar_t__ rsvd; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  cmd; } ;
struct TYPE_8__ {TYPE_3__ version_reply; TYPE_2__ version; TYPE_1__ hdr; } ;
struct esd_usb2_msg {int net_count; TYPE_4__ msg; int /*<<< orphan*/  version; int /*<<< orphan*/  rx_submitted; int /*<<< orphan*/  udev; } ;
struct esd_usb2 {int net_count; TYPE_4__ msg; int /*<<< orphan*/  version; int /*<<< orphan*/  rx_submitted; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_VERSION ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_attr_firmware ; 
 int /*<<< orphan*/  dev_attr_hardware ; 
 int /*<<< orphan*/  dev_attr_nets ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*,int) ; 
 int FUNC3 (struct esd_usb2_msg*,struct esd_usb2_msg*) ; 
 int FUNC4 (struct esd_usb2_msg*,struct esd_usb2_msg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct esd_usb2_msg*) ; 
 struct esd_usb2_msg* FUNC8 (int,int /*<<< orphan*/ ) ; 
 struct esd_usb2_msg* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,struct esd_usb2_msg*) ; 

__attribute__((used)) static int FUNC12(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct esd_usb2 *dev;
	struct esd_usb2_msg *msg;
	int i, err;

	dev = FUNC9(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		err = -ENOMEM;
		goto done;
	}

	dev->udev = FUNC6(intf);

	FUNC5(&dev->rx_submitted);

	FUNC11(intf, dev);

	msg = FUNC8(sizeof(*msg), GFP_KERNEL);
	if (!msg) {
		err = -ENOMEM;
		goto free_msg;
	}

	/* query number of CAN interfaces (nets) */
	msg->msg.hdr.cmd = CMD_VERSION;
	msg->msg.hdr.len = 2;
	msg->msg.version.rsvd = 0;
	msg->msg.version.flags = 0;
	msg->msg.version.drv_version = 0;

	err = FUNC3(dev, msg);
	if (err < 0) {
		FUNC0(&intf->dev, "sending version message failed\n");
		goto free_msg;
	}

	err = FUNC4(dev, msg);
	if (err < 0) {
		FUNC0(&intf->dev, "no version message answer\n");
		goto free_msg;
	}

	dev->net_count = (int)msg->msg.version_reply.nets;
	dev->version = FUNC10(msg->msg.version_reply.version);

	if (FUNC1(&intf->dev, &dev_attr_firmware))
		FUNC0(&intf->dev,
			"Couldn't create device file for firmware\n");

	if (FUNC1(&intf->dev, &dev_attr_hardware))
		FUNC0(&intf->dev,
			"Couldn't create device file for hardware\n");

	if (FUNC1(&intf->dev, &dev_attr_nets))
		FUNC0(&intf->dev,
			"Couldn't create device file for nets\n");

	/* do per device probing */
	for (i = 0; i < dev->net_count; i++)
		FUNC2(intf, i);

free_msg:
	FUNC7(msg);
	if (err)
		FUNC7(dev);
done:
	return err;
}