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
struct smsc75xx_priv {int suspend_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMT_CTL ; 
 int PMT_CTL_PHY_PWRUP ; 
 int PMT_CTL_WOL_EN ; 
 int PMT_CTL_WUPS ; 
 int SUSPEND_ALLMODES ; 
 int SUSPEND_SUSPEND2 ; 
 int /*<<< orphan*/  WUCSR ; 
 int WUCSR_BCST_EN ; 
 int WUCSR_MPEN ; 
 int WUCSR_PFDA_EN ; 
 int WUCSR_WUEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct usbnet*,int) ; 
 int FUNC5 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 struct usbnet* FUNC6 (struct usb_interface*) ; 
 int FUNC7 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC8(struct usb_interface *intf)
{
	struct usbnet *dev = FUNC6(intf);
	struct smsc75xx_priv *pdata = (struct smsc75xx_priv *)(dev->data[0]);
	u8 suspend_flags = pdata->suspend_flags;
	int ret;
	u32 val;

	FUNC0(dev->net, "resume suspend_flags=0x%02x\n", suspend_flags);

	/* do this first to ensure it's cleared even in error case */
	pdata->suspend_flags = 0;

	if (suspend_flags & SUSPEND_ALLMODES) {
		/* Disable wakeup sources */
		ret = FUNC3(dev, WUCSR, &val);
		if (ret < 0) {
			FUNC2(dev->net, "Error reading WUCSR\n");
			return ret;
		}

		val &= ~(WUCSR_WUEN | WUCSR_MPEN | WUCSR_PFDA_EN
			| WUCSR_BCST_EN);

		ret = FUNC5(dev, WUCSR, val);
		if (ret < 0) {
			FUNC2(dev->net, "Error writing WUCSR\n");
			return ret;
		}

		/* clear wake-up status */
		ret = FUNC3(dev, PMT_CTL, &val);
		if (ret < 0) {
			FUNC2(dev->net, "Error reading PMT_CTL\n");
			return ret;
		}

		val &= ~PMT_CTL_WOL_EN;
		val |= PMT_CTL_WUPS;

		ret = FUNC5(dev, PMT_CTL, val);
		if (ret < 0) {
			FUNC2(dev->net, "Error writing PMT_CTL\n");
			return ret;
		}
	}

	if (suspend_flags & SUSPEND_SUSPEND2) {
		FUNC1(dev->net, "resuming from SUSPEND2\n");

		ret = FUNC3(dev, PMT_CTL, &val);
		if (ret < 0) {
			FUNC2(dev->net, "Error reading PMT_CTL\n");
			return ret;
		}

		val |= PMT_CTL_PHY_PWRUP;

		ret = FUNC5(dev, PMT_CTL, val);
		if (ret < 0) {
			FUNC2(dev->net, "Error writing PMT_CTL\n");
			return ret;
		}
	}

	ret = FUNC4(dev, 1);
	if (ret < 0) {
		FUNC2(dev->net, "device not ready in smsc75xx_resume\n");
		return ret;
	}

	return FUNC7(intf);
}