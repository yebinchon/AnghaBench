#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int num_altsetting; TYPE_6__* cur_altsetting; } ;
struct usb_device_id {int /*<<< orphan*/  driver_info; } ;
struct usb_device {char* devpath; TYPE_7__* bus; TYPE_4__* actconfig; } ;
typedef  int /*<<< orphan*/  devpath ;
struct TYPE_16__ {scalar_t__ intf_num; } ;
struct TYPE_15__ {int busnum; } ;
struct TYPE_13__ {scalar_t__ bInterfaceNumber; int bNumEndpoints; } ;
struct TYPE_14__ {TYPE_5__ desc; TYPE_2__* endpoint; } ;
struct TYPE_11__ {int bNumInterfaces; } ;
struct TYPE_12__ {TYPE_3__ desc; } ;
struct TYPE_9__ {int bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bmAttributes; } ;
struct TYPE_10__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SMS1XXX_BOARD_SIANO_STELLAR_ROM ; 
 int USB_DIR_IN ; 
 struct usb_device* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int,char*) ; 
 int FUNC10 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,int) ; 
 int FUNC12 (struct usb_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC14(struct usb_interface *intf,
			const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC0(intf);
	char devpath[32];
	int i, rc;

	FUNC3("board id=%lu, interface number %d\n",
		 id->driver_info,
		 intf->cur_altsetting->desc.bInterfaceNumber);

	if (FUNC5(id->driver_info)->intf_num !=
	    intf->cur_altsetting->desc.bInterfaceNumber) {
		FUNC1("interface %d won't be used. Expecting interface %d to popup\n",
			intf->cur_altsetting->desc.bInterfaceNumber,
			FUNC5(id->driver_info)->intf_num);
		return -ENODEV;
	}

	if (intf->num_altsetting > 1) {
		rc = FUNC12(udev,
				       intf->cur_altsetting->desc.bInterfaceNumber,
				       0);
		if (rc < 0) {
			FUNC2("usb_set_interface failed, rc %d\n", rc);
			return rc;
		}
	}

	FUNC1("smsusb_probe %d\n",
	       intf->cur_altsetting->desc.bInterfaceNumber);
	for (i = 0; i < intf->cur_altsetting->desc.bNumEndpoints; i++) {
		FUNC1("endpoint %d %02x %02x %d\n", i,
		       intf->cur_altsetting->endpoint[i].desc.bEndpointAddress,
		       intf->cur_altsetting->endpoint[i].desc.bmAttributes,
		       intf->cur_altsetting->endpoint[i].desc.wMaxPacketSize);
		if (intf->cur_altsetting->endpoint[i].desc.bEndpointAddress &
		    USB_DIR_IN)
			rc = FUNC10(udev, FUNC11(udev,
				intf->cur_altsetting->endpoint[i].desc.bEndpointAddress));
		else
			rc = FUNC10(udev, FUNC13(udev,
				intf->cur_altsetting->endpoint[i].desc.bEndpointAddress));
	}
	if ((udev->actconfig->desc.bNumInterfaces == 2) &&
	    (intf->cur_altsetting->desc.bInterfaceNumber == 0)) {
		FUNC1("rom interface 0 is not used\n");
		return -ENODEV;
	}

	if (id->driver_info == SMS1XXX_BOARD_SIANO_STELLAR_ROM) {
		/* Detected a Siano Stellar uninitialized */

		FUNC9(devpath, sizeof(devpath), "usb\\%d-%s",
			 udev->bus->busnum, udev->devpath);
		FUNC3("stellar device in cold state was found at %s.\n",
			devpath);
		rc = FUNC7(
				udev, FUNC6(devpath),
				id->driver_info);

		/* This device will reset and gain another USB ID */
		if (!rc)
			FUNC3("stellar device now in warm state\n");
		else
			FUNC2("Failed to put stellar in warm state. Error: %d\n",
			       rc);

		return rc;
	} else {
		rc = FUNC8(intf, id->driver_info);
	}

	FUNC3("Device initialized with return code %d\n", rc);
	FUNC4(id->driver_info);
	return rc;
}