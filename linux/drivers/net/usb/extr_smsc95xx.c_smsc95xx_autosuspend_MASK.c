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
typedef  int /*<<< orphan*/  u32 ;
struct usbnet {int /*<<< orphan*/  net; scalar_t__* data; } ;
struct smsc95xx_priv {int features; } ;

/* Variables and functions */
 int EBUSY ; 
 int FEATURE_PHY_NLP_CROSSOVER ; 
 int /*<<< orphan*/  PHY_INT_MASK_ANEG_COMP_ ; 
 int /*<<< orphan*/  PHY_INT_MASK_LINK_DOWN_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usbnet*) ; 
 int FUNC6 (struct usbnet*) ; 
 int FUNC7 (struct usbnet*) ; 

__attribute__((used)) static int FUNC8(struct usbnet *dev, u32 link_up)
{
	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
	int ret;

	if (!FUNC3(dev->net)) {
		/* interface is ifconfig down so fully power down hw */
		FUNC0(dev->net, "autosuspend entering SUSPEND2\n");
		return FUNC6(dev);
	}

	if (!link_up) {
		/* link is down so enter EDPD mode, but only if device can
		 * reliably resume from it.  This check should be redundant
		 * as current FEATURE_REMOTE_WAKEUP parts also support
		 * FEATURE_PHY_NLP_CROSSOVER but it's included for clarity */
		if (!(pdata->features & FEATURE_PHY_NLP_CROSSOVER)) {
			FUNC2(dev->net, "EDPD not supported\n");
			return -EBUSY;
		}

		FUNC0(dev->net, "autosuspend entering SUSPEND1\n");

		/* enable PHY wakeup events for if cable is attached */
		ret = FUNC4(dev,
			PHY_INT_MASK_ANEG_COMP_);
		if (ret < 0) {
			FUNC2(dev->net, "error enabling PHY wakeup ints\n");
			return ret;
		}

		FUNC1(dev->net, "entering SUSPEND1 mode\n");
		return FUNC5(dev);
	}

	/* enable PHY wakeup events so we remote wakeup if cable is pulled */
	ret = FUNC4(dev,
		PHY_INT_MASK_LINK_DOWN_);
	if (ret < 0) {
		FUNC2(dev->net, "error enabling PHY wakeup ints\n");
		return ret;
	}

	FUNC0(dev->net, "autosuspend entering SUSPEND3\n");
	return FUNC7(dev);
}