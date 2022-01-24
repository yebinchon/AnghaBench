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
typedef  int u8 ;
typedef  int u32 ;
struct usbnet {int /*<<< orphan*/  net; scalar_t__* data; } ;
struct usb_interface {int dummy; } ;
struct smsc95xx_priv {int suspend_flags; int /*<<< orphan*/  carrier_check; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CARRIER_CHECK_DELAY ; 
 int PM_CTL_WOL_EN_ ; 
 int PM_CTL_WUPS_ ; 
 int /*<<< orphan*/  PM_CTRL ; 
 int SUSPEND_ALLMODES ; 
 int /*<<< orphan*/  WUCSR ; 
 int WUCSR_MPEN_ ; 
 int WUCSR_WAKE_EN_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 struct usbnet* FUNC6 (struct usb_interface*) ; 
 int FUNC7 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC8(struct usb_interface *intf)
{
	struct usbnet *dev = FUNC6(intf);
	struct smsc95xx_priv *pdata;
	u8 suspend_flags;
	int ret;
	u32 val;

	FUNC0(!dev);
	pdata = (struct smsc95xx_priv *)(dev->data[0]);
	suspend_flags = pdata->suspend_flags;

	FUNC1(dev->net, "resume suspend_flags=0x%02x\n", suspend_flags);

	/* do this first to ensure it's cleared even in error case */
	pdata->suspend_flags = 0;
	FUNC3(&pdata->carrier_check, CARRIER_CHECK_DELAY);

	if (suspend_flags & SUSPEND_ALLMODES) {
		/* clear wake-up sources */
		ret = FUNC4(dev, WUCSR, &val);
		if (ret < 0)
			return ret;

		val &= ~(WUCSR_WAKE_EN_ | WUCSR_MPEN_);

		ret = FUNC5(dev, WUCSR, val);
		if (ret < 0)
			return ret;

		/* clear wake-up status */
		ret = FUNC4(dev, PM_CTRL, &val);
		if (ret < 0)
			return ret;

		val &= ~PM_CTL_WOL_EN_;
		val |= PM_CTL_WUPS_;

		ret = FUNC5(dev, PM_CTRL, val);
		if (ret < 0)
			return ret;
	}

	ret = FUNC7(intf);
	if (ret < 0)
		FUNC2(dev->net, "usbnet_resume error\n");

	return ret;
}