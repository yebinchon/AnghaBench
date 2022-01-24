#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct p54u_priv {int /*<<< orphan*/  fw_wait_load; struct firmware const* fw; struct usb_interface* intf; struct usb_device* udev; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  p54u_driver ; 
 int FUNC2 (struct p54u_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 

__attribute__((used)) static void FUNC7(const struct firmware *firmware,
				  void *context)
{
	struct p54u_priv *priv = context;
	struct usb_device *udev = priv->udev;
	struct usb_interface *intf = priv->intf;
	int err;

	if (firmware) {
		priv->fw = firmware;
		err = FUNC2(priv);
	} else {
		err = -ENOENT;
		FUNC1(&udev->dev, "Firmware not found.\n");
	}

	FUNC0(&priv->fw_wait_load);
	/*
	 * At this point p54u_disconnect may have already freed
	 * the "priv" context. Do not use it anymore!
	 */
	priv = NULL;

	if (err) {
		FUNC1(&intf->dev, "failed to initialize device (%d)\n", err);

		FUNC4(udev);
		FUNC3(&p54u_driver, intf);
		FUNC6(udev);
	}

	FUNC5(intf);
}