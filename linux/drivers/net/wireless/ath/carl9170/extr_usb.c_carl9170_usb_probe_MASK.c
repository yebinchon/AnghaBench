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
struct usb_interface {int /*<<< orphan*/  dev; TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int /*<<< orphan*/  driver_info; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct ar9170 {int usb_ep_cmd_is_bulk; struct usb_device* udev; int /*<<< orphan*/  rx_pool_urbs; int /*<<< orphan*/  rx_anch_urbs; int /*<<< orphan*/  rx_work_urbs; int /*<<< orphan*/  tx_anch_urbs; int /*<<< orphan*/  tx_cmd_urbs; int /*<<< orphan*/  usb_tasklet; int /*<<< orphan*/  fw_load_wait; int /*<<< orphan*/  fw_boot_wait; int /*<<< orphan*/  cmd_wait; int /*<<< orphan*/  tx_err; int /*<<< orphan*/  tx_cmd; int /*<<< orphan*/  tx_anch; int /*<<< orphan*/  tx_wait; int /*<<< orphan*/  rx_work; int /*<<< orphan*/  rx_pool; int /*<<< orphan*/  rx_anch; int /*<<< orphan*/  hw; int /*<<< orphan*/  features; struct usb_interface* intf; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct TYPE_6__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 scalar_t__ AR9170_USB_EP_CMD ; 
 int /*<<< orphan*/  CARL9170FW_NAME ; 
 int /*<<< orphan*/  CARL9170_STOPPED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct ar9170*) ; 
 int FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ USB_ENDPOINT_XFER_BULK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ar9170* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC6 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  carl9170_usb_firmware_step2 ; 
 int /*<<< orphan*/  carl9170_usb_tasklet ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC9 (struct usb_interface*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ar9170*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC12 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC13 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC14 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*) ; 
 int FUNC17 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_interface*,struct ar9170*) ; 

__attribute__((used)) static int FUNC19(struct usb_interface *intf,
			      const struct usb_device_id *id)
{
	struct usb_endpoint_descriptor *ep;
	struct ar9170 *ar;
	struct usb_device *udev;
	int i, err;

	err = FUNC17(FUNC9(intf));
	if (err)
		return err;

	ar = FUNC4(sizeof(*ar));
	if (FUNC0(ar))
		return FUNC1(ar);

	udev = FUNC9(intf);
	ar->udev = udev;
	ar->intf = intf;
	ar->features = id->driver_info;

	/* We need to remember the type of endpoint 4 because it differs
	 * between high- and full-speed configuration. The high-speed
	 * configuration specifies it as interrupt and the full-speed
	 * configuration as bulk endpoint. This information is required
	 * later when sending urbs to that endpoint.
	 */
	for (i = 0; i < intf->cur_altsetting->desc.bNumEndpoints; ++i) {
		ep = &intf->cur_altsetting->endpoint[i].desc;

		if (FUNC13(ep) == AR9170_USB_EP_CMD &&
		    FUNC12(ep) &&
		    FUNC14(ep) == USB_ENDPOINT_XFER_BULK)
			ar->usb_ep_cmd_is_bulk = true;
	}

	FUNC18(intf, ar);
	FUNC2(ar->hw, &intf->dev);

	FUNC8(&ar->rx_anch);
	FUNC8(&ar->rx_pool);
	FUNC8(&ar->rx_work);
	FUNC8(&ar->tx_wait);
	FUNC8(&ar->tx_anch);
	FUNC8(&ar->tx_cmd);
	FUNC8(&ar->tx_err);
	FUNC7(&ar->cmd_wait);
	FUNC7(&ar->fw_boot_wait);
	FUNC7(&ar->fw_load_wait);
	FUNC11(&ar->usb_tasklet, carl9170_usb_tasklet,
		     (unsigned long)ar);

	FUNC3(&ar->tx_cmd_urbs, 0);
	FUNC3(&ar->tx_anch_urbs, 0);
	FUNC3(&ar->rx_work_urbs, 0);
	FUNC3(&ar->rx_anch_urbs, 0);
	FUNC3(&ar->rx_pool_urbs, 0);

	FUNC15(intf);

	FUNC6(ar, CARL9170_STOPPED);

	err = FUNC10(THIS_MODULE, 1, CARL9170FW_NAME,
		&ar->udev->dev, GFP_KERNEL, ar, carl9170_usb_firmware_step2);
	if (err) {
		FUNC16(intf);
		FUNC5(ar);
	}
	return err;
}