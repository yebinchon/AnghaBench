#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct device {int dummy; } ;
struct usb_device {struct device dev; } ;
struct p54u_priv {TYPE_1__* udev; int /*<<< orphan*/  fw_wait_load; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  fw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ __NUM_P54U_HWTYPES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 int FUNC6 (struct p54u_priv*) ; 
 TYPE_2__* p54u_fwlist ; 
 int /*<<< orphan*/  p54u_load_firmware_cb ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,struct p54u_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC10(struct ieee80211_hw *dev,
			      struct usb_interface *intf)
{
	struct usb_device *udev = FUNC5(intf);
	struct p54u_priv *priv = dev->priv;
	struct device *device = &udev->dev;
	int err, i;

	FUNC1(FUNC0(p54u_fwlist) != __NUM_P54U_HWTYPES);

	FUNC4(&priv->fw_wait_load);
	i = FUNC6(priv);
	if (i < 0)
		return i;

	FUNC3(&priv->udev->dev, "Loading firmware file %s\n",
	       p54u_fwlist[i].fw);

	FUNC8(intf);
	err = FUNC7(THIS_MODULE, 1, p54u_fwlist[i].fw,
				      device, GFP_KERNEL, priv,
				      p54u_load_firmware_cb);
	if (err) {
		FUNC2(&priv->udev->dev, "(p54usb) cannot load firmware %s "
					  "(%d)!\n", p54u_fwlist[i].fw, err);
		FUNC9(intf);
	}

	return err;
}