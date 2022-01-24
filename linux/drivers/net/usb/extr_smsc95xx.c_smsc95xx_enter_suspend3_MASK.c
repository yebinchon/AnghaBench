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
typedef  int u32 ;
struct usbnet {int /*<<< orphan*/  net; scalar_t__* data; } ;
struct smsc95xx_priv {int /*<<< orphan*/  suspend_flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int PM_CTL_PHY_RST_ ; 
 int PM_CTL_RES_CLR_WKP_STS ; 
 int PM_CTL_SUS_MODE_ ; 
 int PM_CTL_SUS_MODE_3 ; 
 int PM_CTL_WUPS_ ; 
 int PM_CTL_WUPS_WOL_ ; 
 int /*<<< orphan*/  PM_CTRL ; 
 int /*<<< orphan*/  RX_FIFO_INF ; 
 int RX_FIFO_INF_USED_ ; 
 int /*<<< orphan*/  SUSPEND_SUSPEND3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct usbnet *dev)
{
	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
	u32 val;
	int ret;

	ret = FUNC1(dev, RX_FIFO_INF, &val);
	if (ret < 0)
		return ret;

	if (val & RX_FIFO_INF_USED_) {
		FUNC0(dev->net, "rx fifo not empty in autosuspend\n");
		return -EBUSY;
	}

	ret = FUNC1(dev, PM_CTRL, &val);
	if (ret < 0)
		return ret;

	val &= ~(PM_CTL_SUS_MODE_ | PM_CTL_WUPS_ | PM_CTL_PHY_RST_);
	val |= PM_CTL_SUS_MODE_3 | PM_CTL_RES_CLR_WKP_STS;

	ret = FUNC2(dev, PM_CTRL, val);
	if (ret < 0)
		return ret;

	/* clear wol status */
	val &= ~PM_CTL_WUPS_;
	val |= PM_CTL_WUPS_WOL_;

	ret = FUNC2(dev, PM_CTRL, val);
	if (ret < 0)
		return ret;

	pdata->suspend_flags |= SUSPEND_SUSPEND3;

	return 0;
}