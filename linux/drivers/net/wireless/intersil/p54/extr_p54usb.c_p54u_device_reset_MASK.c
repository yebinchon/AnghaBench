#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct p54u_priv {TYPE_1__* udev; TYPE_4__* intf; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;
struct TYPE_6__ {scalar_t__ condition; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ USB_INTERFACE_BINDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (TYPE_1__*,TYPE_4__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *dev)
{
	struct p54u_priv *priv = dev->priv;
	int ret, lock = (priv->intf->condition != USB_INTERFACE_BINDING);

	if (lock) {
		ret = FUNC1(priv->udev, priv->intf);
		if (ret < 0) {
			FUNC0(&priv->udev->dev, "(p54usb) unable to lock "
				"device for reset (%d)!\n", ret);
			return ret;
		}
	}

	ret = FUNC2(priv->udev);
	if (lock)
		FUNC3(priv->udev);

	if (ret)
		FUNC0(&priv->udev->dev, "(p54usb) unable to reset "
			"device (%d)!\n", ret);

	return ret;
}